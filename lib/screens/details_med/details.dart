import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class DetailsMed extends StatelessWidget {
  const DetailsMed({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return DefaultScaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(48, 0, 0, 0),
                        offset: Offset(0, 4),
                        blurRadius: 4,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(48, 0, 0, 0),
                        offset: Offset(4, 0),
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        bottom: 0.sp, top: 0.sp, start: 3.sp),
                    child: IconButton(
                      onPressed: () {
                        context.goNamed(AppRouter.homeScreen);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                    ),
                  ),
                ),
                Image(
                  image: const AssetImage(
                    'assets/images/icon_App.png',
                  ),
                  fit: BoxFit.cover,
                  width: 45.w,
                  height: 55.h,
                ),
              ],
            ),
          ),
          PageView(
            controller: controller,
            children: const [],
          )
        ],
      ),
    ));
  }
}
