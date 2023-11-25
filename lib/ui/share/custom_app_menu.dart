import 'package:flutter/material.dart';
import 'package:flutter_web_counter/services/navigation_service.dart';
import 'package:flutter_web_counter/ui/share/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () => navigationService.navigateTo('/stateful'),
            color: Colors.black,
          ),
          const SizedBox(width: 10), // This is to add space between the buttons =/
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => navigationService.navigateTo('/provider'),
            color: Colors.black,
          ),
          const SizedBox(width: 10), // This is to add space between the buttons =/
          CustomFlatButton(
            text: 'Page 3',
            onPressed: () => navigationService.navigateTo('/no-exist'),
            color: Colors.black,
          )
        ],
      )
    );
  }
}
