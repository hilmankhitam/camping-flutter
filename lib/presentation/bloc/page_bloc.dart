import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(PageInitial()) {
    on<GoToSplashScreen>((event, emit) => emit(OnSplashScreen()));

    on<GoToIntroScreen>((event, emit) => emit(OnIntroScreen()));
  }
}
