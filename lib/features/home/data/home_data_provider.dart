import 'package:bloc_demo/features/home/data/home_model.dart';

import '../../../data/db/database_helper.dart';

class HomeDataSourceImpl {
  Future<List<GetHomeData>> getHomeFromDb() async {
    final maps = await DatabaseHelper().getNotes();
    return maps.map((map) => GetHomeData.fromMap(map.toMap())).toList();
  }
}
