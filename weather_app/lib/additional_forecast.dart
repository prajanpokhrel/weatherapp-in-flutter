import 'package:flutter/material.dart';

class AdditonalForecast extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const AdditonalForecast({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // SizedBox(height: 8),
            Icon(
              icon,
              size: 32,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            // SizedBox(height: 8),
            Text(value)
          ],
        ),
      ),
    );
  }
}
