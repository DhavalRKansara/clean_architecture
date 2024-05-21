import 'package:counter/core/domain/entities/counter/counter_entity.dart';
import 'package:counter/core/domain/repositories/counter/counter_repository.dart';

class ResetCounterUseCase {
  final CounterRepository repository;

  ResetCounterUseCase(this.repository);

  void call() {
    repository.setCounter(CounterEntity(0));
  }
}
