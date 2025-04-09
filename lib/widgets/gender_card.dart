import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected ? const Color.fromARGB(255, 213, 8, 18) : const Color(0xff111427),
          ),
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 90,
                color: Colors.white,
              ),
              Text(
                label.toUpperCase(),
                style: const TextStyle(
                  fontSize: 33,
                  color: Color.fromARGB(255, 85, 84, 84),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
