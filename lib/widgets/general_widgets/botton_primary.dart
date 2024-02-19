import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  const ButtonPrimary({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: const EdgeInsets.symmetric(horizontal: 24),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 253, 194, 32),
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
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 14, 33, 51),
          fontSize: 18,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}

class ButtonPrimaryPro extends StatelessWidget {
  final String text;
  const ButtonPrimaryPro({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 42),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 253, 194, 32),
          elevation: 1,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
            color: Color.fromARGB(255, 14, 33, 51),
            fontSize: 18,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
