import 'package:flutter/material.dart';

class NavigationBottomSheet extends StatelessWidget {
  final VoidCallback onClose;

  const NavigationBottomSheet({
    Key? key,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 252, 250, 250),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTripDetails(),
                  const Divider(color: Colors.grey),
                  _buildStationRow('Current Station', 'null', Colors.blue),
                  const Divider(color: Colors.grey),
                  _buildStationRow('Next Station', 'null', Colors.red),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: onClose,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTripDetails() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Trip Details',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('Estimated Time : 37 min'),
            SizedBox(width: 35),
            Text('Distance: 20 mi'),
          ],
        ),
        Text('Arrival Time: 6:13 PM'),
      ],
    );
  }

  Widget _buildStationRow(String title, String address, Color color) {
    return Row(
      children: [
        Icon(Icons.location_on, color: color, size: 25),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              address,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
