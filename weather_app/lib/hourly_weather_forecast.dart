import 'package:flutter/material.dart';

class HourlyWeatherForecast extends StatelessWidget {
  final String time;
  final IconData icon;
  final String pressure;
  const HourlyWeatherForecast(
      {super.key,
      required this.time,
      required this.icon,
      required this.pressure});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              time,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Icon(
              icon,
              size: 32,
            ),
            SizedBox(height: 8),
            Text(pressure),
          ],
        ),
      ),
    );
  }
}
