class OnBoardingModel {
  final String persononboarding;
  final String backgroundonboarding;
  final String title;
  final String descriptions;

  OnBoardingModel({
    required this.persononboarding,
    required this.backgroundonboarding,
    required this.title,
    required this.descriptions,
  });
}

class ImagesSwiperModel {
  final String swiperImage;
  ImagesSwiperModel({required this.swiperImage});
}

class CompanyModel {
  final String companyIcon;
  final String companyName;
  CompanyModel({
    required this.companyIcon,
    required this.companyName,
  });
}

class CategoryModel {
  final String categoriesImage;
  final String categoriesName;
  CategoryModel({
    required this.categoriesImage,
    required this.categoriesName,
  });
}

class DetailsMedModel {
  final String medImage;
  final String medName;
  final String medForm;
  final String companyName;
  final String categoriesName;
  final  List<String> title;
  final List<String> titleText;
  // final Map<String, String> title;
  DetailsMedModel({
    required this.medImage,
    required this.medName,
    required this.medForm,
    required this.companyName,
    required this.categoriesName,
    required this.title,
    required this.titleText,
  });
}
