import 'package:flutter/material.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({
    super.key,
    required this.height,
    required this.onChanged,
  });

  final double height;
  final ValueChanged<double> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  fontWeight: FontWeight.bold,
                ),
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
            value: height,
            min: 80,
            max: 220,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
