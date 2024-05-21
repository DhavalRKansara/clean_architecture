import 'package:counter/core/domain/entities/counter/counter_entity.dart';
import 'package:counter/core/domain/repositories/counter/counter_repository.dart';

class IncrementCounterUseCase {
  final CounterRepository repository;

  IncrementCounterUseCase(this.repository);

  void call() {
    final currentCounter = repository.getCounter();
    repository.setCounter(CounterEntity(currentCounter.value + 1));
  }
}
