import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/components/default_textformfieald.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/screens/category_data/category_item.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';

class CategoryData extends StatelessWidget {
  const CategoryData({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20.0.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 36.w,
                  height: 36.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Theme.of(context).colorScheme.onTertiary,
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
                      hintText: 'Search drug, company etc..',
                      prefix: Icons.search_rounded,
                      controller: searchController,
                      radius: 10.r,
                      keyboardType: TextInputType.name,
                      validation: const [],
                      scureText: false,
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
    );
  }
}
