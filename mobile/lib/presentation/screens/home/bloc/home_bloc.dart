import 'package:bloc/bloc.dart';
import 'package:mobile/data/repositories/user_repository.dart';

import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeInitialEvent>(_onHomeInitialEvent);
  }

  final UserRepository userRepository = UserRepository();

  void _onHomeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      status: HomeStatus.processing,
    ));
    final result = await Future.wait([
      userRepository.getUserProfile(),
    ]);
    (result[0]).fold((error) {
      emit(state.copyWith(
        status: HomeStatus.failure,
      ));
      print("get user inf failed:  $error}");
    }, (response) {
      print("User information:  ${response}");
    });
    emit(state.copyWith(status: HomeStatus.success));
  }
}
