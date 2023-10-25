import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/app.dart';

void main() {
  ScreenUtil.ensureScreenSize();
  runApp(const App());
}
