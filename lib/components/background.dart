import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';
import 'package:pharma_assist/themes/app_colors.dart';

class Background extends StatelessWidget {
  const Background({super.key});
  @override
  Widget build(BuildContext context) {
    final themeCubitState = context.watch<ThemeCubit>().state;
    final isDarkSelected = (themeCubitState is ThemeFetched &&
        (themeCubitState).themeMode == ThemeMode.dark);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: isDarkSelected
            ? LinearGradient(
                colors: AppColors.backgroundGradientColors,
                stops: const [0, 0, 1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        color: isDarkSelected ? null : AppColors.white,
      ),
    );
  }
}
