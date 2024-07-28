import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/dashboard_navigate_buttons.dart';
import 'package:flutter_application_1/presentation/widgets/trip_info.dart';

class MapScreen extends StatelessWidget {
  final bool isSimulationStarted;
  final VoidCallback onStartSimulation;
  final VoidCallback onStartNavigation;

  const MapScreen({
    Key? key,
    required this.isSimulationStarted,
    required this.onStartSimulation,
    required this.onStartNavigation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.97,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/map.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        if (isSimulationStarted)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TripInformation(),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          )
        else
          Positioned(
            bottom: 10,
            left: 2,
            right: 5,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.42,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TripInformation(),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        const SizedBox(width: 5),
                        CameraButton(
                            text: 'Start Navigation',
                            onPressed: onStartNavigation),
                        const SizedBox(width: 20),
                        CameraButton(
                            text: 'Start Simulation',
                            onPressed: onStartSimulation),
                        const SizedBox(width: 20),
                        CameraButton(
                            text: 'Navigate Me Home',
                            onPressed: onStartSimulation),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
