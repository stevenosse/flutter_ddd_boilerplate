import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/src/core/resources/types.dart';

/// Class responsable for doing the navigation
class IRouter {
  /// The navigatorKey, this is a required one. Use the default or set your own key
  static late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static BuildContext get context => getKey().currentContext!;

  static Json? _arguments;

  static Json? get args => _arguments;

  static set arguments(Json? args) {
    _arguments = args;
  }

  /// Method to set you own [navigatorKey]
  static void setKey(GlobalKey<NavigatorState> key) {
    navigatorKey = key;
  }

  /// Getter for [navigatorKey]
  static GlobalKey<NavigatorState> getKey() {
    return navigatorKey;
  }

  /// Forward navigation, it's similar to `Navigator.of(context).push`
  static Future<T?> to<T>(String name, {bool replace = false, Json? args}) async {
    if (!replace) {
      return await navigatorKey.currentState!.pushNamed(name, arguments: args);
    }
    return await navigatorKey.currentState!.pushReplacementNamed(name, arguments: args);
  }

  /// Forward navigation and remove all routes until, it's similar
  /// to `Navigator.of(context).pushAndRemoveUntil`
  static Future<T?> toAndRemoveUntil<T>(String name, RoutePredicate predicate) async {
    return await navigatorKey.currentState!.pushNamedAndRemoveUntil(name, predicate);
  }

  /// Back the navigation, it's similar with Navigator.of(context).pop()`
  static void back<T extends Object>([T? result]) {
    navigatorKey.currentState!.pop(result);
  }
}
