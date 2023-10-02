import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class SearchScreen extends HookWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchcontroller = TextEditingController();
    List<String> filterText = [
      'By Commercial Name',
      'By Scientific Name',
      'By Company Name',
      'By Scientific Category',
      'By Composition',
    ];

    final checkboxValue1 = useState(false);
    final checkboxValue2 = useState(false);
    final checkboxValue3 = useState(false);
    final checkboxValue4 = useState(false);
    final checkboxValue5 = useState(false);
    return DefaultScaffold(
        body: Stack(
      children: [
        const Background(),
        SafeArea(
            child: Column(children: [
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        color: Theme.of(context).colorScheme.onTertiary,
                        boxShadow: [
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
                            context.pop();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 24.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Expanded(
                      child: SizedBox(
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            DefaultTextFormField(
                                hintText: 'Search drug,company etc.',
                                prefix: Icons.search_rounded,
                                controller: searchcontroller,
                                radius: 10.r,
                                keyboardType: TextInputType.name,
                                validation: [],
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer),
                            Padding(
                              padding: EdgeInsets.all(10.0.sp),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        debugPrint('filter');
                                        showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  backgroundColor:
                                                      Theme.of(context)
                                                          .colorScheme
                                                          .background,
                                                  content: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            translation(context)
                                                                .filter,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleLarge
                                                                ?.copyWith(
                                                                    color: const Color(
                                                                        0xFF00A8B9)),
                                                          ),
                                                          TextButton(
                                                            child: Text(
                                                              translation(
                                                                      context)
                                                                  .reset,
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall
                                                                  ?.copyWith(
                                                                      color: const Color(
                                                                          0xFF00A8B9)),
                                                            ),
                                                            onPressed: () {
                                                              checkboxValue1
                                                                      .value =
                                                                  false;
                                                              checkboxValue2
                                                                      .value =
                                                                  false;
                                                              checkboxValue3
                                                                      .value =
                                                                  false;
                                                              checkboxValue4
                                                                      .value =
                                                                  false;
                                                              checkboxValue5
                                                                      .value =
                                                                  false;
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          CheckboxListTile(
                                                            title: Text(
                                                              filterText[0],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            value:
                                                                checkboxValue1
                                                                    .value,
                                                            onChanged:
                                                                (bool? val) {
                                                              checkboxValue1
                                                                      .value =
                                                                  !checkboxValue1
                                                                      .value;
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                            checkColor:
                                                                Colors.white,
                                                            side: BorderSide(
                                                                width: 1.5.w,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .outline),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          ),
                                                          CheckboxListTile(
                                                            title: Text(
                                                              filterText[1],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            value:
                                                                checkboxValue2
                                                                    .value,
                                                            onChanged:
                                                                (bool? val) {
                                                              checkboxValue2
                                                                      .value =
                                                                  !checkboxValue2
                                                                      .value;
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                            checkColor:
                                                                Colors.white,
                                                            side: BorderSide(
                                                                width: 1.5.w,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .outline),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          ),
                                                          CheckboxListTile(
                                                            title: Text(
                                                              filterText[2],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            value:
                                                                checkboxValue3
                                                                    .value,
                                                            onChanged:
                                                                (bool? val) {
                                                              checkboxValue3
                                                                      .value =
                                                                  !checkboxValue3
                                                                      .value;
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                            checkColor:
                                                                Colors.white,
                                                            side: BorderSide(
                                                                width: 1.5.w,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .outline),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          ),
                                                          CheckboxListTile(
                                                            title: Text(
                                                              filterText[3],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            value:
                                                                checkboxValue4
                                                                    .value,
                                                            onChanged:
                                                                (bool? val) {
                                                              checkboxValue4
                                                                      .value =
                                                                  !checkboxValue4
                                                                      .value;
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                            checkColor:
                                                                Colors.white,
                                                            side: BorderSide(
                                                                width: 1.5.w,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .outline),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          ),
                                                          CheckboxListTile(
                                                            title: Text(
                                                              filterText[4],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .labelSmall,
                                                            ),
                                                            value:
                                                                checkboxValue5
                                                                    .value,
                                                            onChanged:
                                                                (bool? val) {
                                                              checkboxValue5
                                                                      .value =
                                                                  !checkboxValue5
                                                                      .value;
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                            checkColor:
                                                                Colors.white,
                                                            side: BorderSide(
                                                                width: 1.5.w,
                                                                color: Theme.of(
                                                                        context)
                                                                    .colorScheme
                                                                    .outline),
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ));
                                      },
                                      child: Image.asset(
                                        AppImages.filterIcon,
                                        width: 27.w,
                                        height: 27.h,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Column(
                  children: [],
                )
              ],
            ),
          )
        ])),
      ],
    ));
  }
}
