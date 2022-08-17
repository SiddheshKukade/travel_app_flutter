import 'package:bloc/bloc.dart';
import 'package:travel_app_flutter/cubit/app_cubit_states.dart';
import 'package:travel_app_flutter/model/data_model.dart';
import 'package:travel_app_flutter/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  final DataServices data;
  late final places;
  // cubit is the emitter tht causes the state to change
  AppCubits(this.data) : super(InitialState()) {
    //1
    emit(WelcomeState()); //2 after 1 . 2 will be called automatically
  }

  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      print(await data.getInfo()); //getting info from the server
      print("palces at app_cutibt");
      print(places);
      emit(LoadedState(places));
    } catch (e) {}
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }
}
