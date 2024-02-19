import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  final String label;
  // final bool icon;
  const Textfield({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 246, 246, 246),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 2,
            spreadRadius: -2,
          ),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black26,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}