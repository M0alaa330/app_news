class ArticalModel {
  final String? image;
  final String? title;
  final String? desc;
  final String? url;
  final String? contant;
//constractor
  ArticalModel({
    required this.title,
    required this.desc,
    required this.image,
    required this.url,
    required this.contant,
  });
  //named constractor we hn3mlo factoy
  factory ArticalModel.fromjson(Map<String, dynamic> json) {
    return ArticalModel(
        contant: json['content'],
        title: json['title'],
        desc: json['description'],
        image: json['urlToImage'],
        url: json['url']);
  }
}
