import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/theme/assets.gen.dart';
import 'sign_in_controller.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      init: SignInController(),
      initState: (_) {},
      builder: (controller) {
        final size = MediaQuery.sizeOf(context);

        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Sign In'),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constraints.maxWidth,
                    minHeight: constraints.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        const Spacer(),
                        Hero(
                          tag: 'hero',
                          child: SvgPicture.asset(
                            Assets.icons.logo,
                            width: MediaQuery.of(context).orientation ==
                                    Orientation.portrait
                                ? size.width
                                : size.height,
                          ),
                        ),
                        SizedBox(height: 30.h),
                        const Spacer(),
                        TextField(
                          onChanged: (value) => controller.login.value = value,
                          decoration: const InputDecoration(
                            labelText: 'Login',
                          ),
                        ),
                        TextField(
                          onChanged: (value) =>
                              controller.password.value = value,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                        SizedBox(height: 20.h),
                        const Spacer(flex: 2),
                        Obx(
                          () => ElevatedButton(
                            onPressed: controller.isButtonEnabled.value
                                ? controller.continuePressed
                                : null,
                            child: controller.isLoading.value
                                ? const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 16),
                                    child: SizedBox(
                                      height: 25,
                                      width: 25,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : const Text('Continue'),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.paddingOf(context).bottom + 15.h,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
