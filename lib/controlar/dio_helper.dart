import 'package:dio/dio.dart';


class DioHelper {
  static late Dio dio;
  static String baseUrl = "https://fakestoreapi.com/";

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }

  static Future<Response> get(
      {required String endpoint, Map<String, dynamic>? queryParameters}) async {
    return await dio.get(
      endpoint,
      queryParameters: queryParameters,
    );
  }

  static Future<Response> post(
      {required String endpoint, Map<String, dynamic>? data}) async {
    return await dio.post(
      endpoint,
      data: data,
    );
  }
    static Future<Response> postwithtoken(
      {required String endpoint, Map<String, dynamic>? data}) async {
    return await dio.post(
      endpoint,
      data: data,
      options: Options(
        headers: {
          "token":"Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjIsInVzZXIiOiJtb3JfMjMxNCIsImlhdCI6MTY4NTM2MDkzOX0.uSd_OimTMhU-Ttrqe03q4bGmL2BOsLPl2AuWhoAMk4U"
        }
      )
    );
  }

}
