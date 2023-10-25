import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  static final h1 = TextStyle(fontSize: 40.0.sp, fontWeight: FontWeight.w600);

  //24
  static final h2 = TextStyle(fontSize: 24.0.sp, fontWeight: FontWeight.w400);
  static final h2Bold = h2.copyWith(fontWeight: FontWeight.w700);

  //18
  static final size22 =
      TextStyle(fontSize: 22.0.sp, fontWeight: FontWeight.w400);
  static final size22Plus = size22.copyWith(fontWeight: FontWeight.w500);
  static final size22Semi = size22.copyWith(fontWeight: FontWeight.w600);
  static final size22Bold = size22.copyWith(fontWeight: FontWeight.w700);

  //18
  static final size20 =
      TextStyle(fontSize: 20.0.sp, fontWeight: FontWeight.w400);
  //18
  static final size18 =
      TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.w400);

  //16
  static final p1 = TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.w400);
  static final p1Plus = p1.copyWith(fontWeight: FontWeight.w500);
  static final p1Semi = p1.copyWith(fontWeight: FontWeight.w600);
  static final p1Bold = p1.copyWith(fontWeight: FontWeight.w700);

  //15
  static final size15 =
      TextStyle(fontSize: 15.0.sp, fontWeight: FontWeight.w400);
  static final size15Semi = size15.copyWith(fontWeight: FontWeight.w600);
  static final size15Bold = size15.copyWith(fontWeight: FontWeight.w700);

  //14
  static final p2 = TextStyle(fontSize: 14.0.sp, fontWeight: FontWeight.w400);
  static final p2Semi = p2.copyWith(fontWeight: FontWeight.w600);
  static final p2Bold = p2.copyWith(fontWeight: FontWeight.w800);

  //12
  static final size12 =
      TextStyle(fontSize: 12.0.sp, fontWeight: FontWeight.w400);
  static final size12Semi = size15.copyWith(fontWeight: FontWeight.w600);
  static final size12Bold = size15.copyWith(fontWeight: FontWeight.w700);

  //10
  static final size10 =
      TextStyle(fontSize: 10.0.sp, fontWeight: FontWeight.w400);
  static final size10Semi = size15.copyWith(fontWeight: FontWeight.w600);
  static final size10Bold = size15.copyWith(fontWeight: FontWeight.w700);
}
