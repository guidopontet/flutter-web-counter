import 'package:flutter/material.dart';
import 'package:flutter_web_counter/ui/share/custom_app_menu.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({
    super.key,
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const CustomAppMenu(),
            const Spacer(),
            Expanded(child: child),
            const Spacer(),
          ],
        )
      )
    );
  }
}