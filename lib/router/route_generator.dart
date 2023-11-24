import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:flutter_web_counter/ui/views/counter_provider_view.dart';
import 'package:flutter_web_counter/ui/views/counter_view.dart';
import 'package:flutter_web_counter/ui/views/view_404.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(const CounterView(), '/stateful');
      case '/provider':
        return _fadeRoute(const CounterProviderView(), '/provider');
      default:
        return _fadeRoute(const View404(), '/404');
    }
  }

  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
      settings: RouteSettings(name: routeName),
      pageBuilder: (_, __, ___) => child,
      transitionsBuilder: (_, animation, __, ___) =>
        (kIsWeb)
        ? FadeTransition(
          opacity: animation,
          child: child,
        )
        : CupertinoPageTransition(
            primaryRouteAnimation: animation,
            secondaryRouteAnimation: animation,
            linearTransition: true,
            child: child,
          )
    );
  }
}
