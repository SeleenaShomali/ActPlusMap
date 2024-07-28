import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/camera_row.dart';
import 'package:flutter_application_1/presentation/widgets/navigation_app_bar.dart';
import 'package:flutter_application_1/presentation/widgets/navigation_sheet.dart';
import 'package:flutter_application_1/presentation/widgets/navigtaion_card_widget.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  bool _isBottomSheetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavigationAppBar(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/map.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 100,
            child: FloatingCardColumn(),
          ),
          const CameraRow(),
          if (_isBottomSheetVisible)
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: NavigationBottomSheet(
                onClose: () {
                  setState(() {
                    _isBottomSheetVisible = false;
                  });
                },
              ),
            ),
          if (!_isBottomSheetVisible)
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _isBottomSheetVisible = true;
                  });
                },
                child: const Icon(Icons.info),
              ),
            ),
        ],
      ),
    );
  }
}
