part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashScreen extends PageEvent {
  @override
  List<Object?> get props => [];
}

class GoToIntroScreen extends PageEvent {
  @override
  List<Object?> get props => [];
}
