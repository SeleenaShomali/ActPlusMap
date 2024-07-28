import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/floating_card.dart';

class FloatingCardColumn extends StatelessWidget {
  const FloatingCardColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          FloatingCard(title: 'Speed', value: '50 mph', icon: Icons.speed),
          FloatingCard(
              title: 'Distance', value: '5 mi', icon: Icons.directions),
          FloatingCard(title: 'Time', value: '10 mins', icon: Icons.timer),
        ],
      ),
    );
  }
}
