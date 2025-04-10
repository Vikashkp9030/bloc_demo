import '../../domain/home_entity.dart';

abstract class HomeState {
  final List<HomeData> data;

  HomeState({this.data = const []});
}

class LoadingState extends HomeState {}

class HomeInitial extends HomeState {
  HomeInitial([List<HomeData>? data]) : super(data: data ?? []);
}
