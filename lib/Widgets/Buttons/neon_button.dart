import 'package:flutter/material.dart';
import 'package:katsu_resume/constraints/utils.dart';

class NeonButton extends StatelessWidget {
  final String text;
  final Function? onPressed;

  const NeonButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 252,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            kWhite,
            kWhite,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: kYellowNormal.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: GlowingOverscrollIndicator(
        axisDirection: AxisDirection.right,
        color: Colors.white,
        child: TextButton(
          onPressed: () => onPressed!(),
          child: Text(
            text,
            style: const TextStyle(
              color: kBlack,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
