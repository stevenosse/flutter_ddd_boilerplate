import 'package:binder/binder.dart';
import 'package:flutter/material.dart';

import '/src/presentation/state/sample_state.dart';
import '/src/presentation/views/home/home_view_logic_ref.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: LogicLoader(
            refs: [homeViewLogicRef],
            builder: (context, loading, child) {
              if (loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              final data = context.watch(sampleStateRef);

              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  data.fold((model) {
                    return Text(model!.name);
                  }, (r) {
                    return const Text("Failed to load Api data");
                  }),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
