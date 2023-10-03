import 'package:flutter/material.dart';
import 'package:pharma_assist/themes/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.darkPurple,
      ),
    );
  }
}
