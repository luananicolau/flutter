import 'package:flutter/material.dart';
import '../models/weather.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  WeatherCard({required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(weather.city),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Temperature: ${weather.temperature}°C'),
            Text('Condition: ${weather.condition}'),
            Text('Humidity: ${weather.humidity}%'),
            Text('Wind Speed: ${weather.windSpeed} km/h'),
          ],
        ),
      ),
    );
  }
}
