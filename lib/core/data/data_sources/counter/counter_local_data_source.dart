import 'package:counter/core/data/models/counter/counter_model.dart';
import 'package:hive/hive.dart';

abstract class CounterLocalDataSource {
  CounterModel getCounter();

  void setCounter(CounterModel model);
}

class CounterLocalDataSourceImpl implements CounterLocalDataSource {
  final Box box;

  CounterLocalDataSourceImpl({required this.box});

  @override
  CounterModel getCounter() {
    final value = box.get('counter', defaultValue: 0);
    return CounterModel(value);
  }

  @override
  void setCounter(CounterModel model) {
    box.put('counter', model.value);
  }
}
