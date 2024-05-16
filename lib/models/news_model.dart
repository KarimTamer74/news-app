class NewsModel {
  final String? image;
  final String title;
  final String? subtitle;

  NewsModel({required this.image, required this.title, required this.subtitle});
  factory NewsModel.fromJson(json) {
    return NewsModel(
            image: json['urlToImage'],
            title: json['title'],
            subtitle: json['description']);;
  }
}
