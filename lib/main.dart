import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/dashboard.dart';

void main() {
  runApp(BusTripApp());
}

class BusTripApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bus Trip Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JourneyDetailsScreen(),
    );
  }
}
