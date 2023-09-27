import 'dart:math';
import 'package:first_project/BmiResultScreen.dart';
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
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale
                              ? const Color.fromARGB(255, 213, 8, 18)
                              : const Color(0xff111427),
                        ),
                        height: 200,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 90,
                              color: Colors.white,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                fontSize: 33,
                                color: Color.fromARGB(255, 85, 84, 84),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale
                              ? const Color(0xff111427)
                              : const Color.fromARGB(255, 213, 8, 18),
                        ),
                        height: 200,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 90,
                              color: Colors.white,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                fontSize: 33,
                                color: Color.fromARGB(255, 85, 84, 84),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff111427),
                ),
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "HEIGHT",
                      style: TextStyle(color: Colors.white38, fontSize: 30),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${height.round()}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          "cm",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                      ],
                    ),
                    Slider(
                      thumbColor: const Color.fromARGB(255, 213, 8, 18),
                      activeColor: Colors.white,
                      value: height.toDouble(),
                      min: 80,
                      max: 220,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff111427),
                      ),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          const Text(
                            "WETGHT",
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 25,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            "$weight",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "btn1",
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                shape:
                                    const CircleBorder(side: BorderSide.none),
                                backgroundColor: const Color(0xff1B243E),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                heroTag: "btn2",
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                shape:
                                    const CircleBorder(side: BorderSide.none),
                                backgroundColor: const Color(0xff1B243E),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff111427),
                      ),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Spacer(
                            flex: 1,
                          ),
                          const Text(
                            "AGE",
                            style:
                                TextStyle(fontSize: 25, color: Colors.white38),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            "$age",
                            style: const TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "btn3",
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                shape:
                                    const CircleBorder(side: BorderSide.none),
                                backgroundColor: const Color(0xff1B243E),
                                child: const Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                heroTag: "btn4",
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                shape:
                                    const CircleBorder(side: BorderSide.none),
                                backgroundColor: const Color(0xff1B243E),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 35,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            color: const Color.fromARGB(255, 213, 8, 18),
            child: MaterialButton(
              onPressed: () {
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
              child: const Text(
                "CALCULATE",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
