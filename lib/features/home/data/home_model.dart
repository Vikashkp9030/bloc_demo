import 'package:bloc_demo/features/home/domain/home_entity.dart';

class GetHomeData extends HomeData {
  GetHomeData({
    required int id,
    required String title,
    required String description,
  }) : super(id: id, title: title, description: description);

  factory GetHomeData.fromMap(Map<String, dynamic> map) {
    return GetHomeData(
      id: map['id'],
      title: map['title'],
      description: map['description'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }
}
