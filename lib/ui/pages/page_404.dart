import 'package:flutter/material.dart';
import 'package:flutter_web_counter/ui/share/custom_flat_button.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('404', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            const Text('No se encontró la página', style: TextStyle(fontSize: 20)),
            CustomFlatButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
              color: Colors.pink,
            )
          ]
        ),
      ),
    );
  }
}