import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pharma_assist/blocs/theme/theme_cubit.dart';

class BackgroundScreen extends HookWidget {
  const BackgroundScreen({super.key});
  @override
  Widget build(BuildContext context) {
    late ThemeState themeCubitState =
        BlocProvider.of<ThemeCubit>(context).state;
    final isDarkSelected = useState(themeCubitState is ThemeFetched &&
        (themeCubitState).themeMode == ThemeMode.dark);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: isDarkSelected.value
            ? LinearGradient(
                colors: [
                  const Color(0xff3f51b5).withOpacity(0.6),
                  const Color(0xffB7A5FF).withOpacity(0.6),
                  const Color(0xff33B9C7).withOpacity(0.6),
                ],
                stops: const [0, 0, 1],
                // tileMode: TileMode.decal,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : const LinearGradient(colors: [Colors.white]),
      ),
    );
  }
}
