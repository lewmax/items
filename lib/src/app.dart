import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constants/app_routes.dart';
import '../core/theme/app_colors.dart';
import '../generated/l10n.dart';
import 'screens/home/home_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (_, child) => GetMaterialApp(
        title: 'Olearis',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        popGesture: true,
        initialRoute: AppRoutes.home,
        getPages: [
          GetPage(name: AppRoutes.signIn, page: () => SignInScreen()),
          GetPage(name: AppRoutes.home, page: () => const HomeScreen()),
        ],
      ),
    );
  }
}
