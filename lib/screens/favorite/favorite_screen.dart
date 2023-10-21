import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/favorite/widget/favorite_item.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class FavoriteScreen extends HookWidget {
  const FavoriteScreen({
    super.key,
    this.hasBackButton = true,
  });
  final bool hasBackButton;
  @override
  Widget build(BuildContext context) {
    final isFavorite = useState(true);
    return DefaultScaffold(
        body: Stack(
      children: [
        const Background(),
        SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    !hasBackButton
                        ? const SizedBox()
                        : BottonBack(
                            onTap: () => context.goNamed(AppRouter.homeLayout),
                          ),
                    Text(
                      translation(context).favorites,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Image(
                      image: const AssetImage(AppImages.iconLogin),
                      fit: BoxFit.cover,
                      width: 45.w,
                      height: 55.h,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: GridView.builder(
                      padding: EdgeInsets.all(20.sp),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisSpacing: 15,
                              crossAxisSpacing: 15,
                              //مسؤلة عن طول الايتم
                              childAspectRatio: 50 / 16,
                              crossAxisCount: 1),
                      itemCount: 1,
                      itemBuilder: (context, index) => FavoriteItem(
                            isFavorite: isFavorite,
                          ))),
            ],
          ),
        ),
      ],
    ));
  }
}
