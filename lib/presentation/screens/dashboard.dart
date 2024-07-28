import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/navigation.dart';
import 'package:flutter_application_1/presentation/widgets/build_map_widget.dart';
import 'package:flutter_application_1/presentation/widgets/dashboard_appbar.dart';
import 'package:flutter_application_1/presentation/widgets/problem.dart';
import 'package:flutter_application_1/presentation/widgets/stations.dart';

class JourneyDetailsScreen extends StatefulWidget {
  @override
  _JourneyDetailsScreenState createState() => _JourneyDetailsScreenState();
}

class _JourneyDetailsScreenState extends State<JourneyDetailsScreen> {
  bool _isSimulationStarted = false;

  List<Map<String, dynamic>> _stations = [
    {
      'name': 'Coimbatore',
      'time': '10:30 pm',
      'status': 'past',
      'reachTime': '10:30 pm',
      'leaveTime': '10:35 pm',
      'stationNumber': 1
    },
    {
      'name': 'Gandhipuram',
      'time': '10:40 pm',
      'status': 'past',
      'reachTime': '10:40 pm',
      'leaveTime': '10:45 pm',
      'stationNumber': 2
    },
    {
      'name': 'Vellore',
      'time': '02:27 am',
      'status': 'upcoming',
      'reachTime': '02:27 am',
      'leaveTime': '02:32 am',
      'stationNumber': 3
    },
    {
      'name': 'Ambur',
      'time': '03:27 am',
      'status': 'upcoming',
      'reachTime': '03:27 am',
      'leaveTime': '03:32 am',
      'stationNumber': 4
    },
    {
      'name': 'Kanchipuram',
      'time': '04:27 am',
      'status': 'upcoming',
      'reachTime': '04:27 am',
      'leaveTime': '04:32 am',
      'stationNumber': 5
    },
  ];

  void _startSimulation() {
    setState(() {
      _isSimulationStarted = true;
    });
  }

  void _startNavigation() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NavigationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: const JourneyDetailsAppBar(),
        body: TabBarView(
          children: [
            MapScreen(
              isSimulationStarted: _isSimulationStarted,
              onStartSimulation: _startNavigation,
              onStartNavigation: _startNavigation,
            ),
            StationsScreen(stations: _stations),
            const ReportProblemScreen(),
          ],
        ),
      ),
    );
  }
}
