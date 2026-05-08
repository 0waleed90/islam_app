import 'package:dio/dio.dart';

class QuranApiService {
  final _baseUrl = 'http://api.alquran.cloud';
  final Dio _dio;
  QuranApiService(this._dio);
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await _dio.get('$_baseUrl$endPoint');
    return response.data;
  }
}
