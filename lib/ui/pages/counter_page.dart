import 'package:flutter/material.dart';

import 'package:flutter_web_counter/ui/share/custom_flat_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Contador: $counter',
            style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
