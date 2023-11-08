import 'package:flutter/material.dart';

import 'package:flutter_web_counter/ui/pages/counter_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/stateful',
      routes: {
        '/stateful': (_) => const CounterPage(),
      },
    );
  }
}
