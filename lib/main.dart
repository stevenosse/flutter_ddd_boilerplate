import 'package:flutter/material.dart';

import './src/injector.dart' as i;

import './src/core/app.dart';
import '/src/data/datasources/local/local_storage.dart';

// TODO: Change app name in manifest
// TODO: Change app name in runner
// TODO: change app name in core/app.dart
// TODO: change bundle id
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await i.initializeDependencies();

  await i.injector<LocalStorage>().init();

  runApp(const App());
}
