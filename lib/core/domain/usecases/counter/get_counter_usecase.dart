import 'package:counter/core/domain/entities/counter/counter_entity.dart';
import 'package:counter/core/domain/repositories/counter/counter_repository.dart';

class GetCounterUseCase {
  final CounterRepository repository;

  GetCounterUseCase(this.repository);

  CounterEntity call() {
    return repository.getCounter();
  }
}
