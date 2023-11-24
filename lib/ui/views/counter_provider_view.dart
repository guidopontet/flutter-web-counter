import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_web_counter/providers/counter_provider.dart';
import 'package:flutter_web_counter/ui/share/custom_app_menu.dart';
import 'package:flutter_web_counter/ui/share/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderPageBody()
    );
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Contador Provider', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        FittedBox( // Responsive widget to fit the text inside the screen
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10), // To add padding to the text
            child: Text(
              'Contador: ${ counterProvider.counter }',
              style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
            )
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => counterProvider.decrement(),
            ),
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: () => counterProvider.increment(),
            ),
          ],
        ),
        const Spacer(), // This widget will take all the available space
      ],
    );
  }
}
