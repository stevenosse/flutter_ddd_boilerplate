import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './src/injector.dart' as i;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import './src/core/app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await i.initializeDependencies();

  runApp(const App());
}