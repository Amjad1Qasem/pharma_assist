import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/utilities/navigation.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Row(
                      children: [
                        BottonBack(
                          onTap: () => context.pop(),
                        ),
                      ],
                    ),
                  ),
                  const Text('Data About Programer this App ')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
