import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
          child: Text(
        'Bus Navigation',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      actions: [
        IconButton(
          icon: const Icon(Icons.volume_up),
          onPressed: () {
            // Toggle audio
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
