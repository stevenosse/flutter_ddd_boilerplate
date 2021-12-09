import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/config/routes/i_router.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Text("Settings page"),
            SizedBox(height: 20),
            ElevatedButton(onPressed: IRouter.back, child: Text("Go back home"))
          ],
        ),
      ),
    );
  }
}
