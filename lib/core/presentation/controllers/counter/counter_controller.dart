import 'package:counter/core/domain/usecases/counter/decrement_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/get_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/increment_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/reset_counter_usecase.dart';
import 'package:mobx/mobx.dart';

part 'counter_controller.g.dart';

class CounterController = _CounterController with _$CounterController;

abstract class _CounterController with Store {
  final GetCounterUseCase getCounterUseCase;
  final IncrementCounterUseCase incrementCounterUseCase;
  final DecrementCounterUseCase decrementCounterUseCase;
  final ResetCounterUseCase resetCounterUseCase;

  _CounterController({
    required this.getCounterUseCase,
    required this.incrementCounterUseCase,
    required this.decrementCounterUseCase,
    required this.resetCounterUseCase,
  }) {
    counter = getCounterUseCase.call().value;
  }

  @observable
  int counter = 0;

  @action
  void increment() {
    incrementCounterUseCase.call();
    counter = getCounterUseCase.call().value;
  }

  @action
  void decrement() {
    decrementCounterUseCase.call();
    counter = getCounterUseCase.call().value;
  }

  @action
  void reset() {
    resetCounterUseCase.call();
    counter = getCounterUseCase.call().value;
  }
}
