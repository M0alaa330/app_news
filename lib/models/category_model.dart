class CategoryModel {
  final String image;
  final String title;
  CategoryModel({required this.image, required this.title});
}

List<CategoryModel> categorymodel = [
  CategoryModel(image: "assets/images/general.jpg", title: "General"),
  CategoryModel(image: "assets/images/science.jpg", title: "Science"),
  CategoryModel(image: "assets/images/bussiness.jpg", title: "Business"),
  CategoryModel(image: "assets/images/health.jpg", title: "Health"),
  CategoryModel(image: "assets/images/sport.jpg", title: "Sport"),
  CategoryModel(image: "assets/images/technology.jpg", title: "Technology"),
];
