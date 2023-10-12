import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/botton_back.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/screens/caterories/widget/category_item.dart';
import 'package:pharma_assist/screens/search/widget/filter_search.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class CategoryData extends HookWidget {
  const CategoryData({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
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
    List<DetailsMedModel> listOfMed = [
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
      DetailsMedModel(
          medImage: AppImages.medImage,
          medName: 'Paracetamol ',
          medForm: 'Dolo',
          companyName: 'Tameco',
          categoriesName: 'Antibiotics',
          title: [
            'Properties',
            "Pregnancy & Lactation",
            "Indication",
            "Side Effects",
            "Overdose",
          ],
          titleText: [
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
            'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma. ',
          ]),
    ];
    TextEditingController searchController = TextEditingController();
    return DefaultScaffold(
      body: Stack(
        children: [
          const Background(),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(20.0.sp),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottonBack(
                      onTap: () => context.pop(),
                    ),
                    Text(
                      categoryName,
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
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.all(10.0.sp),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: [
                      DefaultTextFormField(
                          hintText: 'Search on drugs ',
                          prefix: Icons.search_rounded,
                          controller: searchController,
                          radius: 10.r,
                          keyboardType: TextInputType.name,
                          validation: const [],
                          fillColor:
                              Theme.of(context).colorScheme.tertiaryContainer),
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
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .background,
                                            content: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      translation(context)
                                                          .filter,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .titleLarge
                                                          ?.copyWith(
                                                              color: const Color(
                                                                  0xFF00A8B9)),
                                                    ),
                                                    TextButton(
                                                      child: Text(
                                                        translation(context)
                                                            .reset,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .labelSmall
                                                            ?.copyWith(
                                                                color: const Color(
                                                                    0xFF00A8B9)),
                                                      ),
                                                      onPressed: () {
                                                        checkboxValue1.value =
                                                            false;
                                                        checkboxValue2.value =
                                                            false;
                                                        checkboxValue3.value =
                                                            false;
                                                        checkboxValue4.value =
                                                            false;
                                                        checkboxValue5.value =
                                                            false;
                                                      },
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    FilterCheckboxItem(
                                                      text: filterText[0],
                                                      initialValue:
                                                          checkboxValue1.value,
                                                      onChanged: (bool value) {
                                                        checkboxValue1.value =
                                                            value;
                                                      },
                                                    ),
                                                    FilterCheckboxItem(
                                                      text: filterText[1],
                                                      initialValue:
                                                          checkboxValue2.value,
                                                      onChanged: (bool? val) {
                                                        checkboxValue2.value =
                                                            !checkboxValue2
                                                                .value;
                                                      },
                                                    ),
                                                    FilterCheckboxItem(
                                                      text: filterText[2],
                                                      initialValue:
                                                          checkboxValue3.value,
                                                      onChanged: (bool? value) {
                                                        checkboxValue3.value =
                                                            !checkboxValue3
                                                                .value;
                                                      },
                                                    ),
                                                    FilterCheckboxItem(
                                                      text: filterText[3],
                                                      initialValue:
                                                          checkboxValue4.value,
                                                      onChanged: (bool? value) {
                                                        checkboxValue4.value =
                                                            !checkboxValue4
                                                                .value;
                                                      },
                                                    ),
                                                    FilterCheckboxItem(
                                                      text: filterText[4],
                                                      initialValue:
                                                          checkboxValue5.value,
                                                      onChanged: (bool? value) {
                                                        checkboxValue5.value =
                                                            !checkboxValue5
                                                                .value;
                                                      },
                                                    ),
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
                SizedBox(
                  height: 30.h,
                ),
                Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) =>
                          CategoryContainer(model: listOfMed[index]),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 20.h,
                          ),
                      itemCount: listOfMed.length),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
