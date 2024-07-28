import 'package:flutter/material.dart';

class CameraRow extends StatelessWidget {
  const CameraRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(width: 30),
        CameraView(),
        SizedBox(width: 20),
        CameraView(),
        SizedBox(width: 20),
        CameraView(),
      ],
    );
  }
}

class CameraView extends StatelessWidget {
  const CameraView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 80,
      color: Colors.black,
      child: const Center(
        child: Icon(Icons.camera, color: Colors.white),
      ),
    );
  }
}
