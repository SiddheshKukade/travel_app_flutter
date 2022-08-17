import 'package:bloc/bloc.dart';
import 'package:travel_app_flutter/cubit/app_cubit_states.dart';

class AppCubits extends Cubit {
  // cubit is the emitter tht causes the state to change
  AppCubits() : super(InitialState()) {
    //1
    emit(WelcomeState()); //2 after 1 . 2 will be called automatically
  }
}
