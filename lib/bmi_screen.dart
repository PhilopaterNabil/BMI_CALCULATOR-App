import 'dart:math';

import 'package:first_project/BmiResultScreen.dart';
import 'package:first_project/widgets/container_card.dart';
import 'package:first_project/widgets/custom_sumbit_button.dart';
import 'package:first_project/widgets/gender_card.dart';
import 'package:first_project/widgets/height_slider.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  static const String screenRoute = 'BMIScreen';

  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 180;
  int weight = 80;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00011E),
      appBar: AppBar(
        backgroundColor: const Color(0xff0b0e21),
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  GenderCard(
                    label: "MALE",
                    icon: Icons.male,
                    isSelected: isMale,
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  GenderCard(
                    label: "FEMALE",
                    icon: Icons.female,
                    isSelected: !isMale,
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: HeightSlider(
                  height: height,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  }),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ContainerCard(
                    label: "WEIGHT",
                    value: weight,
                    onIncrement: () {
                      setState(() {
                        weight++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        weight--;
                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  ContainerCard(
                    label: "AGE",
                    value: age,
                    onIncrement: () {
                      setState(() {
                        age++;
                      });
                    },
                    onDecrement: () {
                      setState(() {
                        age--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          CustomSumbitButton(
            label: "CALCULATE",
            onPreesed: () {
              var result = weight / pow(height / 100, 2);
              String gender;
              isMale ? gender = 'Male' : gender = 'Female';
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Result(
                  age: age,
                  isMale: isMale,
                  result: result,
                  gender: gender,
                  height: height,
                  weight: weight,
                ),
              ));
              // Get.to(() => Result());
            },
          ),
        ],
      ),
    );
  }
}
