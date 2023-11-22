import 'package:flutter/material.dart';

import 'package:flutter_web_counter/router/route_generator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
