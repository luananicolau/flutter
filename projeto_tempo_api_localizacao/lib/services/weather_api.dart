import '../models/weather.dart';

class WeatherApi {
  Future<Weather> fetchWeather() async {
    // Aqui você implementaria a lógica para fazer a solicitação à API de previsão do tempo
    // e retornar um objeto Weather com os dados obtidos.
    // Por enquanto, apenas retornaremos um objeto Weather fictício.
    return Weather(
      city: 'New York',
      temperature: 20.0,
      condition: 'Sunny',
      humidity: 50.0,
      windSpeed: 10.0,
    );
  }
}
