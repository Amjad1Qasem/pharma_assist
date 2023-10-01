import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_assist/components/background.dart';
import 'package:pharma_assist/components/default_scaffold.dart';
import 'package:pharma_assist/constants/app_images.dart';
import 'package:pharma_assist/model/classes.dart';
import 'package:pharma_assist/router/app_router.dart';
import 'package:pharma_assist/utilities/navigation.dart';
import 'package:pharma_assist/utilities/translation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsMed extends HookWidget {
  const DetailsMed({super.key});

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
    PageController controller = PageController();
    final isLast = useState(false);
    final isFirst = useState(false);
    final isFavorite = useState(false);

    return DefaultScaffold(
        body: Stack(
      children: [
        const BackgroundScreen(),
        SafeArea(
          child: Column(
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
                    Image(
                      image: AssetImage(AppImages.iconLogin),
                      fit: BoxFit.cover,
                      width: 45.w,
                      height: 55.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        if (isFirst.value) {
                        } else {
                          controller.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn);
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary,
                        radius: 20.r,
                        child: Icon(
                          Icons.arrow_left,
                          size: 35.sp,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppImages.medImage,
                          width: 120.w,
                          height: 120.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SmoothPageIndicator(
                            controller: controller, // PageController
                            count: listOfMed.length,
                            effect: ExpandingDotsEffect(
                                activeDotColor:
                                    Theme.of(context).colorScheme.primary,
                                dotColor: Colors.grey,
                                dotHeight: 4.0.h,
                                dotWidth: 10.0.w,
                                spacing: 4.0.w,
                                radius: 5.0.r,
                                expansionFactor: 2.0), // your preferred effect
                            onDotClicked: (index) {}),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        if (isLast.value) {
                        } else {
                          controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastOutSlowIn);
                        }
                      },
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.inversePrimary,
                        radius: 20.r,
                        child: Icon(
                          Icons.arrow_right,
                          size: 35.sp,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0.sp),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'NameMed',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Spacer(),
                        Container(
                          height: 36,
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
                                style:
                                    Theme.of(context).textTheme.displayMedium,
                              )),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text(
                            "${translation(context).manufacturedBy} Tameco Tameco Tameco Tameco",
                            maxLines: 2,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        SizedBox(
                          width: 50.w,
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
                                color: Theme.of(context)
                                    .colorScheme
                                    .onInverseSurface))
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(30.sp),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50.r),
                          topLeft: Radius.circular(50.r),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pregnancy & Lactation',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.white),
                        ),
                        Text(
                          'Lörem ipsum speda plaheten. Nisuns ovis: spen i smartball pong. Heterobel pot. Ultraliga telerade epiktiga läde i prebevis. Dojonar dosk. Heskapet gyr örat livslogga. Progen dissade sokron, i niktiga biojär. Tera nynat. Terasa grindsamhälle. Trirad yre i askstoppad geonyrar. Fas filotiv som dät nyna. Heterost deledes nis. Påliga pregisk decimasamma.Heterost deledes nis. Påliga pregisk decimasamma.Påliga pregisk decimasamma.Påliga pregisk decimasamma. ',
                          maxLines: 12,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  itemCount: listOfMed.length,
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (int index) {
                    if (index == listOfMed.length - 1) {
                      debugPrint('Last screen');

                      isLast.value = true;
                    } else {
                      debugPrint('not Last screen');

                      isLast.value = false;
                    }
                    if (index == 0) {
                      isFirst.value = true;
                    } else {
                      isFirst.value = false;
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
