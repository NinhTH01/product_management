import 'package:flutter/material.dart';
import 'package:product_management/resources/gen/colors.gen.dart';

class AppTextStyles {
  AppTextStyles._();
  static const defaultStyle = TextStyle(
    color: ColorName.black,
  );

  static final s12w600 = defaultStyle.copyWith(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  static final s14w400 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final s14w600 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static final s16w400 = defaultStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static final s16w700 = defaultStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static final s20w400 = defaultStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static final s20w700 = defaultStyle.copyWith(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  static final s30w600 = defaultStyle.copyWith(
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );
}
