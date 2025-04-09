import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    super.key,
    required this.label,
    required this.value,
    required this.onIncrement,
    required this.onDecrement,
  });

  final String label;
  final int value;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
            Text(
              label.toUpperCase(),
              style: const TextStyle(
                color: Colors.white38,
                fontSize: 25,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              value.toString(),
              style:
                  const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: "$label-",
                  onPressed: onDecrement,
                  shape: const CircleBorder(side: BorderSide.none),
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
                  heroTag: "$label+",
                  onPressed: onIncrement,
                  shape: const CircleBorder(side: BorderSide.none),
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
    );
  }
}
