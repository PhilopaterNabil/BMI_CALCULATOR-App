// ignore_for_file: must_be_immutable

import 'package:first_project/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Result extends StatelessWidget {
  static const String screenRoute = 'BMI-Result';
  double result;
  String gender;
  bool isMale;
  double height;
  int weight;
  int age;
  Result({
    required this.age,
    required this.isMale,
    required this.result,
    required this.gender,
    required this.height,
    required this.weight,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0b0e21),
      appBar: AppBar(
        backgroundColor: Color(0xff0b0e21),
         leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, BMIScreen.screenRoute);
            },
          ),
        title: Center(
          child: Text(
            'BMI CALCULATE',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 700,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xff111427),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'Gender: $gender ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Height: ${height.round()}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Weight: $weight',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Age: $age',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Result = ${result.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
               height: 130,
                width: double.infinity,
              ),
              Container(
                width: double.infinity,
                height: 60,
                color: Color(0xffd93558),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, BMIScreen.screenRoute);
                  },
                  child: Text(
                    "RE-CALCULATE",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
