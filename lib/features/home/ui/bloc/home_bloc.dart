import 'package:bloc/bloc.dart';

import '../../domain/home_data_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetHomeUseCase homeUseCase;

  HomeBloc({required this.homeUseCase}) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      emit(LoadingState());
      final res = await homeUseCase.call();
      emit(HomeInitial(res));
    });
  }
}
