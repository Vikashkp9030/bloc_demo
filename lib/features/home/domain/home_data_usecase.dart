import 'package:bloc_demo/features/home/domain/home_entity.dart';

import 'home_repository.dart';

class GetHomeUseCase {
  final HomeRepository repository;
  GetHomeUseCase(this.repository);
  Future<List<HomeData>> call() {
    return repository.getHomeData();
  }
}
