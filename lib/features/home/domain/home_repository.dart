import '../data/home_model.dart';

abstract class HomeRepository {
  Future<List<GetHomeData>> getHomeData();
}
