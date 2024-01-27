import 'dart:ui';

import 'package:flutter/material.dart';
import 'additional_forecast.dart';
import 'hourly_weather_forecast.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white30),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                print("its clicked");
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // main card
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: const [
                          Text(
                            "300K",
                            style: TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 64,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Weather Forecast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HourlyWeatherForecast(
                    time: "9:00",
                    icon: Icons.cloud,
                    pressure: "3001",
                  ),
                  HourlyWeatherForecast(
                    time: "10:00",
                    icon: Icons.cloud,
                    pressure: "3001",
                  ),
                  HourlyWeatherForecast(
                    time: "11:00",
                    icon: Icons.cloud,
                    pressure: "3001",
                  ),
                  HourlyWeatherForecast(
                    time: "9:00",
                    icon: Icons.cloud,
                    pressure: "3001",
                  ),
                  HourlyWeatherForecast(
                    time: "9:00",
                    icon: Icons.sunny,
                    pressure: "3001",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            const Text(
              "Additional Forecast",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: const [
                AdditonalForecast(
                  icon: Icons.water_drop,
                  label: "Humidty",
                  value: "94",
                ),
                AdditonalForecast(
                  icon: Icons.air,
                  label: "wind speed",
                  value: "300.0",
                ),
                AdditonalForecast(
                  icon: Icons.beach_access,
                  label: "Pressure",
                  value: "1000",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
