import 'package:flutter/material.dart';

class StationsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> stations;

  const StationsScreen({Key? key, required this.stations}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) {
        var station = stations[index];
        Color textColor = station['status'] == 'past'
            ? Color.fromARGB(255, 35, 141, 39)
            : Colors.grey;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 4.0,
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              title: Text(
                '${station['stationNumber']}. ${station['name']}',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4.0),
                  Text(
                    'Reach Time: ${station['reachTime']}',
                    style: TextStyle(color: textColor),
                  ),
                  Text(
                    'Leave Time: ${station['leaveTime']}',
                    style: TextStyle(color: textColor),
                  ),
                  Text(
                    'Scheduled Time: ${station['time']}',
                    style: TextStyle(color: textColor),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: textColor,
              ),
            ),
          ),
        );
      },
    );
  }
}
