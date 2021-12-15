import 'package:binder/binder.dart';
import 'package:flutter_boilerplate/src/presentation/state/sample_state.dart';

import '/src/core/requests/sample_request.dart';
import '/src/domain/usecases/sample_use_case.dart';
import '/src/injector.dart';

final homeViewLogicRef = LogicRef((scope) => HomeViewLogic(scope));

class HomeViewLogic with Logic implements Loadable {
  const HomeViewLogic(this.scope);

  @override
  final Scope scope;

  SampleUseCase get sampleUseCase => injector<SampleUseCase>();

  @override
  Future<void> load() async {
    final data = await sampleUseCase(params: const SampleRequest(query: "dummy request"));
    write(sampleStateRef, data);
  }
}
