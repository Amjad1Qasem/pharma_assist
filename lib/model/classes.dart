
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
  final String categoriesNmae;
  CategoryModel({
    required this.categoriesImage,
    required this.categoriesNmae,
  });
}
