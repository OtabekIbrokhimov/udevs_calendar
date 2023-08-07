import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udevs_calendar/controller/blocs/home/home_event.dart';

import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<ReminderInHome>((event, emit) => reminder);
  }

  void reminder(HomeEvent event, emit) {
    //logic part
  }
}
