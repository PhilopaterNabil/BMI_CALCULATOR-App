part of 'bmi_cubit.dart';

@immutable
sealed class BMIState {}

final class BmiInitial extends BMIState {}

class GenderChanged extends BMIState {
  final bool isMale;
  GenderChanged(this.isMale);
}

class HeightChanged extends BMIState {
  final double height;
  HeightChanged(this.height);
}

class WeightChanged extends BMIState {
  final int weight;
  WeightChanged(this.weight);
}

class AgeChanged extends BMIState {
  final int age;
  AgeChanged(this.age);
}

class BMIUpdated extends BMIState {
  final bool isMale;
  final double height;
  final int weight;
  final int age;
  BMIUpdated({
    required this.isMale,
    required this.height,
    required this.weight,
    required this.age,
  });
}
