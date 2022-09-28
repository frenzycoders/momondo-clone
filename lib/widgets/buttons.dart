import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.pink.shade500,
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.flight, color: Colors.white),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigo.shade900,
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.bed, color: Colors.white),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigo.shade900,
          ),
          alignment: Alignment.center,
          child: const Icon(Icons.car_rental_outlined, color: Colors.white),
        ),
      ],
    );
  }
}
