import 'home_entity.dart';

abstract class HomeRepository {
  Future<List<HomeData>> getHomeData();
}
