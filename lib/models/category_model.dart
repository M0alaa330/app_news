class CategoryModel {
  final String image;
  final String title;
  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categorymodel = [
  CategoryModel(image: "assets/images/general.jpg", title: "entertainment"),
  CategoryModel(image: "assets/images/science.jpg", title: "science"),
  CategoryModel(image: "assets/images/bussiness.jpg", title: "business"),
  CategoryModel(image: "assets/images/health.jpg", title: "health"),
  CategoryModel(image: "assets/images/sport.jpg", title: "sport"),
  CategoryModel(image: "assets/images/technology.jpg", title: "technology"),
];
