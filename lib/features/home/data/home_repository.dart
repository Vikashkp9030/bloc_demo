import 'package:bloc_demo/features/home/domain/home_repository.dart';

import 'home_data_provider.dart';
import 'home_model.dart';

class HomeRepositoryImp implements HomeRepository {
  final HomeDataSourceImpl homeDataSourceImpl;

  HomeRepositoryImp(this.homeDataSourceImpl);

  @override
  Future<List<GetHomeData>> getHomeData() async {
    final res = await homeDataSourceImpl.getHomeFromDb();
    return res;
  }
}
