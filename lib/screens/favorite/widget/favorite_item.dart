
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({
    super.key,
    required this.isFavorite,
  });
  final ValueNotifier isFavorite;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 15.sp),
        width: double.infinity.w,
        height: 50.h,
        decoration: BoxDecoration(
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
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(15.r)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Text(
                  'Paracetamol',
                  maxLines: 2,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: const Color(0xff333333)),
                ),
                IconButton(
                    onPressed: () {
                      isFavorite.value = !isFavorite.value;
                    },
                    icon: Icon(
                      isFavorite.value
                          ? Icons.favorite
                          : Icons.favorite_outline,
                      size: 30.sp,
                      color: Theme.of(context).colorScheme.onInverseSurface,
                    ))
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 32.h,
                  decoration: BoxDecoration(
                    color: Theme.of(context)
                        .colorScheme
                        .inversePrimary
                        .withOpacity(0.6),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Antibiotics',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodySmall,
                      )),
                ),
              ],
            )
          ],
        ));
  }
}
