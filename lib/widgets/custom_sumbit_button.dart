
import 'package:flutter/material.dart';

class CustomSumbitButton extends StatelessWidget {
  const CustomSumbitButton({
    super.key,
    required this.label,
    required this.onPreesed,
  });

  final String label;
  final void Function() onPreesed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      color: const Color.fromARGB(255, 213, 8, 18),
      child: MaterialButton(
        onPressed: onPreesed,
        child: Text(
          label.toUpperCase(),
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
    );
  }
}
