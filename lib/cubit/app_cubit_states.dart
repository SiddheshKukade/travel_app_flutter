import 'package:equatable/equatable.dart';
import 'package:travel_app_flutter/model/data_model.dart';

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
  final List<DataModel> places;
  //catch the data that we have received
  LoadedState(this.places);
  // responsible for showing the UI Data
  @override
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  final DataModel place;
//catch the data that we have received
  DetailState(this.place);
// responsible for showing the UI Data
  @override
  List<Object> get props => [place];
}
