import 'package:dio/dio.dart';

final Dio dio = Dio();

class ApiService {
  Future<Response> post(
      {required body,
      required String url,
      required String token,
      String? contentType}) async {
    var response = await dio.post(url,
        data: body,
        options: Options(
          contentType: contentType,
          headers: {'Authorization': "Bearer $token"},
        ));
    return response;
  }
}
