

import 'package:dio/dio.dart';


class ApiService {
  final _baseUrl = "https://fakestoreapi.com/";

  final Dio dio;

  ApiService(this.dio);

  Future<List<dynamic>?> getProducts({
    required String endPoint,
  }) async {
    try {
      var response = await dio.request(
        '$_baseUrl$endPoint',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        return List<dynamic>.from(response.data);
      } else {
        print('Error: ${response.statusMessage}');
        return null;
      }
    } catch (e) {
      print('Exception occurred: $e');
      return null;
    }
  }
}
