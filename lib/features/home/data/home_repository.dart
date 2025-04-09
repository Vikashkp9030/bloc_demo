import 'package:bloc_demo/features/home/domain/home_entity.dart';
import 'package:bloc_demo/features/home/domain/home_repository.dart';

import 'home_data_provider.dart';

class HomeRepositoryImp implements HomeRepository {
  final HomeDataSourceImpl homeDataSourceImpl;

  HomeRepositoryImp(this.homeDataSourceImpl);

  @override
  Future<List<HomeData>> getHomeData() {
    // TODO: implement getHomeData
    throw UnimplementedError();
  }
}
