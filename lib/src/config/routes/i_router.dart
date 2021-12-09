import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Class responsable for doing the navigation
class IRouter {
  /// The navigatorKey, this is a required one. Use the default or set your own key
  static late GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  /// [bool] value to set the use of cupertino transitions
  static bool useCupertinoTransition = false;

  /// Middleware to be executed before the navigation
  static Function(Widget)? onBeforePush;

  /// Middleware to be executed after the navigation
  static Function(Widget)? onAfterPush;

  /// Method to set you own [navigatorKey]
  static void setKey(GlobalKey<NavigatorState> key) {
    navigatorKey = key;
  }

  /// Getter for [navigatorKey]
  static GlobalKey<NavigatorState> getKey() {
    return navigatorKey;
  }

  /// Forward navigation, it's similar to `Navigator.of(context).push`
  static Future<T?> to<T>(String name, {bool replace = false, Map<String, dynamic>? args}) {
    if (!replace) return navigatorKey.currentState!.pushNamed(name, arguments: args);
    return navigatorKey.currentState!.pushReplacementNamed(name, arguments: args);
  }

  /// Forward navigation and remove all routes until, it's similar
  /// to `Navigator.of(context).pushAndRemoveUntil`
  static Future<T?> toAndRemoveUntil<T>(String name, RoutePredicate predicate) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(name, predicate);
  }

  /// Back the navigation, it's similar with Navigator.of(context).pop()`
  static void back<T extends Object>([T? result]) {
    navigatorKey.currentState!.pop(result);
  }
}
