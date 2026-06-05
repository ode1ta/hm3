class DogModel {
  DogModel({
    required this.id,
    required this.url,
    required this.width,
    required this.heigth,
  });

  final String id;
  final String url;
  final int width;
  final int heigth;

  factory DogModel.fromJson(Map<String, dynamic>json){
    return DogModel(id: json['id'], url: json['url'],width: json['width'], heigth: json['heigth']);
  }
}