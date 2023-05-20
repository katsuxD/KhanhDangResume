import 'package:flutter/material.dart';
import 'package:katsu_resume/constraints/utils.dart';

class CursorConstants {
  static BoxDecoration boxDecorationOne = BoxDecoration(
      border: Border.all(color: kYellowNormal, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(90),
      ),
      color: Colors.transparent);

  static BoxDecoration boxDecorationTwo = BoxDecoration(
      border: Border.all(color: kYellowNormal, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(90),
      ),
      color: kYellowNormal);

  static BoxDecoration boxDecorationHovered = BoxDecoration(
      border: Border.all(color: kYellowNormal, width: 1),
      borderRadius: const BorderRadius.all(
        Radius.circular(90),
      ),
      color: kYellowNormal.withOpacity(0.3));
}
