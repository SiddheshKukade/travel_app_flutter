import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  late int x; // if any varaible here is changed then we will get new UI
  // when cubit is created this is the state that will be provided.
  @override
  List<Object> get props => [x];
}

class WelcomeState extends CubitStates {
  // responsible for showing the UI Data
  @override
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  // responsible for showing the UI Data
  @override
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  // responsible for showing the UI Data
  @override
  List<Object> get props => [];
}
