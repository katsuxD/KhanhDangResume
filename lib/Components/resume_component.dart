import 'package:flutter/material.dart';

class ResumeComponent extends StatelessWidget {
  const ResumeComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      width: double.infinity,
      padding: const EdgeInsets.all(80),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.03),
              spreadRadius: 10,
              blurRadius: 20)
        ],
      ),
    );
  }
}
