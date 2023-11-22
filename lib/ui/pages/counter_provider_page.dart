import 'package:flutter/material.dart';

import 'package:flutter_web_counter/ui/share/custom_app_menu.dart';
import 'package:flutter_web_counter/ui/share/custom_flat_button.dart';

class CounterProviderPage extends StatefulWidget {
  const CounterProviderPage({super.key});

  @override
  State<CounterProviderPage> createState() => _CounterProviderPageState();
}

class _CounterProviderPageState extends State<CounterProviderPage> {
  int counter = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppMenu(),
          const Spacer(), // This widget will take all the available space
          const Text('Contador Provider', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          FittedBox( // Responsive widget to fit the text inside the screen
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10), // To add padding to the text
              child: Text(
                'Contador: $counter',
                style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              )
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                text: 'Decrementar',
                onPressed: () => setState(() => counter--),
              ),
              CustomFlatButton(
                text: 'Incrementar',
                onPressed: () => setState(() => counter++),
              ),
            ],
          ),
          const Spacer(), // This widget will take all the available space
        ],
      ),
    );
  }
}
