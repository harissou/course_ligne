import 'package:flutter/material.dart';

class Delevery extends StatelessWidget {
  const Delevery({super.key});

  @override
  Widget build(BuildContext context) {
    const iconSize = 16.0;
    final iconColor = Theme.of(context).primaryColor;
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start, // for an alignement in ligne
      children: [
        const Text(
          "Delivery to",
          style: TextStyle(fontSize: 13.0, color: Colors.grey),
        ),
        Row(
          children: [
            Icon(
              Icons.place,
              size: iconSize,
              color: iconColor,
            ),
            const Text(
              "Cresta, South Africa",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: iconSize,
              color: iconColor,
            )
          ],
        )
      ],
    );
  }
}
