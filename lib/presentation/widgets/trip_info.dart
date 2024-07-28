// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/info_row.dart';

class TripInformation extends StatelessWidget {
  const TripInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 248, 245, 245),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            InfoRow(
              icon: Icons.directions_bus,
              title: 'Trip Number',
              value: '12345',
              color: Colors.green,
            ),
            Divider(color: Colors.grey),
            InfoRow(
              icon: Icons.access_time,
              title: 'Trip Time',
              value: '10:00 AM - 12:00 PM',
              color: Colors.blue,
            ),
            Divider(color: Colors.grey),
            InfoRow(
              icon: Icons.timer,
              title: 'Time to Destination',
              value: '30 mins',
              color: Colors.indigo,
            ),
          ],
        ),
      ),
    );
  }
}
