import 'package:bloc_demo/features/home/data/home_data_provider.dart';
import 'package:bloc_demo/features/home/data/home_repository.dart';
import 'package:bloc_demo/features/home/domain/home_data_usecase.dart';
import 'package:get_it/get_it.dart';

import '../../features/home/domain/home_repository.dart';
import '../../features/home/ui/bloc/home_bloc.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  // Register data source
  getIt.registerLazySingleton<HomeDataSourceImpl>(() => HomeDataSourceImpl());

  // Register repository
  getIt.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImp(getIt<HomeDataSourceImpl>()),
  );

  // Register use case
  getIt.registerLazySingleton<GetHomeUseCase>(
    () => GetHomeUseCase(getIt<HomeRepository>()),
  );

  // Register Bloc
  getIt.registerFactory<HomeBloc>(
    () => HomeBloc(homeUseCase: getIt<GetHomeUseCase>()),
  );
}
