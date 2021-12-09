import 'package:flutter/material.dart';
import '/src/config/themes/app_theme.dart';
import '/src/config/routes/i_route.dart';
import '/src/config/routes/i_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      theme: AppTheme.light,
      title: "Template App",
      onGenerateRoute: IRoute.onGenerateRoutes,
      debugShowCheckedModeBanner: false,
      navigatorKey: IRouter.navigatorKey,
    );
  }
}
