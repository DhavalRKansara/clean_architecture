import 'package:counter/core/data/data_sources/counter/counter_local_data_source.dart';
import 'package:counter/core/data/models/counter/counter_model.dart';
import 'package:counter/core/domain/entities/counter/counter_entity.dart';
import 'package:counter/core/domain/repositories/counter/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterLocalDataSource localDataSource;

  CounterRepositoryImpl({required this.localDataSource});

  @override
  CounterEntity getCounter() {
    final model = localDataSource.getCounter();
    return CounterEntity(model.value);
  }

  @override
  void setCounter(CounterEntity counter) {
    final model = CounterModel(counter.value);
    localDataSource.setCounter(model);
  }
}
