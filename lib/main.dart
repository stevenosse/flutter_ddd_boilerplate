import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './src/config/routes/i_route.dart';
import './src/config/routes/i_router.dart';
import './src/config/themes/app_theme.dart';
import './src/injector.dart' as i;
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");
  await i.initializeDependencies();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: dotenv.env["APPNAME"] ?? "",
      onGenerateRoute: IRoute.onGenerateRoutes,
      navigatorKey: IRouter.navigatorKey,
      theme: AppTheme.light,
    );
  }
}
