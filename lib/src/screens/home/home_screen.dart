import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../core/theme/assets.gen.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const spacing = 12.0;
  static const aspectRatio = 4.0;
  static const crossAxisCount = 2;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      initState: (_) {},
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: Get.back,
              child: const Icon(Icons.arrow_back_ios),
            ),
            title: const Text('Markup Test'),
            actions: [
              IconButton(
                onPressed: controller.removeItem,
                icon: const Icon(Icons.remove),
              ),
              IconButton(
                onPressed: controller.addItem,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          body: LayoutBuilder(
            builder: (context, constr) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: constr.maxWidth,
                    minHeight: constr.maxHeight,
                  ),
                  child: IntrinsicHeight(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Spacer(),
                        Hero(
                          tag: 'hero',
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 370),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: SvgPicture.asset(
                                    width: MediaQuery.sizeOf(context).width,
                                    Assets.icons.logo,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Obx(
                          () {
                            if (controller.items.isEmpty) {
                              return const SizedBox.shrink();
                            }
                            final numberOfRows =
                                (controller.items.length / 2).round();
                            final height = ((MediaQuery.sizeOf(context).width /
                                                crossAxisCount -
                                            spacing *
                                                (crossAxisCount + 1) /
                                                crossAxisCount) /
                                        aspectRatio) *
                                    numberOfRows +
                                spacing * (numberOfRows - 1);

                            return SizedBox(
                              height: height,
                              child: GridView(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: crossAxisCount,
                                  childAspectRatio: aspectRatio,
                                  crossAxisSpacing: spacing,
                                  mainAxisSpacing: spacing,
                                ),
                                children: List.generate(
                                  controller.items.length,
                                  (index) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                      ),
                                      child: Center(
                                          child: Text(controller.items[index])),
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                        SizedBox(height: MediaQuery.paddingOf(context).bottom),
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
