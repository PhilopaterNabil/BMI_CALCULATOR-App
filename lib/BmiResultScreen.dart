import 'package:first_project/bmi_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Result extends StatelessWidget {
  static const String screenRoute = 'BMI-Result';
  double result;
  String gender;
  bool isMale;
  double height;
  int weight;
  int age;
  // ignore: use_key_in_widget_constructors
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
      backgroundColor: const Color(0xff00011E),
      appBar: AppBar(
        backgroundColor: const Color(0xff0b0e21),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text(
              "Your Result",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Center(
            child: Expanded(
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff111427),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Gender: $gender ',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Height: ${height.round()}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Weight: $weight',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Age: $age',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Result = ${result.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: const Color.fromARGB(255, 213, 8, 18),
            child: MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context, BMIScreen.screenRoute);
              },
              child: const Text(
                "RE-CALCULATE",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
