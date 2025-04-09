import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bmi_state.dart';

class BmiCubit extends Cubit<BMIState> {
  BmiCubit() : super(BmiInitial());

  bool isMale = true;
  double height = 180;
  int weight = 80;
  int age = 20;

  void toggleGender(bool male) {
    isMale = male;
    emit(GenderChanged(isMale));
  }

  void changeHeight(double value) {
    height = value;
    emit(HeightChanged(height));
  }

  void changeWeight(int value) {
    weight = value;
    emit(WeightChanged(weight));
  }

  void changeAge(int value) {
    age = value;
    emit(AgeChanged(age));
  }

  // void emitUpdated() {
  //   emit(
  //     BMIUpdated(
  //       isMale: isMale,
  //       height: height,
  //       weight: weight,
  //       age: age,
  //     ),
  //   );
  // }
}
