import 'package:flutter/material.dart';
import 'package:flutter_web_counter/ui/share/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  const MainLayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            // TODO: Add your widgets here
            Spacer(),
          ],
        )
      )
    );
  }
}