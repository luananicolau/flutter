import 'package:flutter/material.dart';
import '../widgets/weather_card.dart';
import '../models/weather.dart';
import '../services/weather_api.dart';

class _HomeScreenState extends State<HomeScreen> {
  Weather? _currentWeather; // Usando "?" para indicar que pode ser nulo

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  Future<void> _fetchWeather() async {
    WeatherApi weatherApi = WeatherApi();
    Weather weather = await weatherApi.fetchWeather();
    setState(() {
      _currentWeather = weather;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previsão do Tempo'),
      ),
      body: _currentWeather != null
          ? WeatherCard(weather: _currentWeather!) // Usando "!" para garantir que o objeto não seja nulo
          : Center(child: CircularProgressIndicator()),
    );
  }
}
