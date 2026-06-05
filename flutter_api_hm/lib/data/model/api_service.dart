import 'package:dio/dio.dart';
import 'package:flutter_api_hm/data/model/dog_model.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<List<DogModel>> getDogs() async {
    final response = await _dio.get(
      'https://pro-api.thedogapi.com/v1/images/search?&page=0&limit=10', 
    );
    response.data;
    List<DogModel> dogs = [];
    response.data.forEach((dog) {
      dogs.add(DogModel.fromJson(dog));
    });
    
    return dogs;
  }
} 