import 'package:flutter/material.dart';

class JourneyDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const JourneyDetailsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
        child: Text(
          'Bus Trip Dashboard',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Map'),
          Tab(text: 'Stations'),
          Tab(text: 'Report Problem'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 48);
}
