import 'package:flutter/material.dart';

import 'package:flutter_web_counter/router/route_generator.dart';
import 'package:flutter_web_counter/ui/layout/main_layout_page.dart';
import 'package:flutter_web_counter/services/navigation_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: navigationService.navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child!);
      }
    );
  }
}
