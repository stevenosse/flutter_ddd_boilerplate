import 'package:flutter/material.dart';
import '/src/presentation/views/home/home_screen.dart';
import '/src/presentation/views/settings/settings_screen.dart';

class IRoute {
  static const String root = "/";
  static const String settingsRoute = "/settings";

  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return _materialRoute(const HomeScreen());
      case settingsRoute:
        return _materialRoute(const SettingsScreen());
      default:
        return _materialRoute(const SizedBox());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
