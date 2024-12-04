import 'package:flutter/material.dart';
import 'package:recipes/features/home/ui/widgets/desc_in_item.dart';

class Bottomitem extends StatelessWidget {
  const Bottomitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left by default
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Apply rounded corners to the image
            child: Image.asset(
              'assets/images/img.png',
              width: double.infinity,  // Keeps the width as 100% of the parent
              height: 150,  // Set a fixed height to reduce the height of the image
              fit: BoxFit.cover, // Ensure the image covers the available space without distorting
            ),
          ),
          const SizedBox(height: 10),
           const desc_in_item(),
        ],
      ),
    );
  }
}
