import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/presentation/views/home/home_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(const HomeScreen());
      default:
        return _materialRoute(const SizedBox()); // TODO: return view not found
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
