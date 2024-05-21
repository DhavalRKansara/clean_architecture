import 'package:counter/core/domain/entities/counter/counter_entity.dart';

abstract class CounterRepository {
  CounterEntity getCounter();

  void setCounter(CounterEntity counter);
}
