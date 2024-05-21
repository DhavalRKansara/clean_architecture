import 'package:counter/core/data/data_sources/counter/counter_local_data_source.dart';
import 'package:counter/core/data/repositories/counter/counter_repository_impl.dart';
import 'package:counter/core/domain/repositories/counter/counter_repository.dart';
import 'package:counter/core/domain/usecases/counter/decrement_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/get_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/increment_counter_usecase.dart';
import 'package:counter/core/domain/usecases/counter/reset_counter_usecase.dart';
import 'package:counter/core/presentation/controllers/counter/counter_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Hive box initialization
  final box = await Hive.openBox('counterBox');

  // Registering dependencies
  sl.registerLazySingleton(() => box);
  sl.registerLazySingleton<CounterLocalDataSource>(
      () => CounterLocalDataSourceImpl(box: sl()));
  sl.registerLazySingleton<CounterRepository>(
      () => CounterRepositoryImpl(localDataSource: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetCounterUseCase(sl()));
  sl.registerLazySingleton(() => IncrementCounterUseCase(sl()));
  sl.registerLazySingleton(() => DecrementCounterUseCase(sl()));
  sl.registerLazySingleton(() => ResetCounterUseCase(sl()));

  // Controllers
  sl.registerLazySingleton(
    () => CounterController(
      getCounterUseCase: sl(),
      incrementCounterUseCase: sl(),
      decrementCounterUseCase: sl(),
      resetCounterUseCase: sl(),
    ),
  );
}
