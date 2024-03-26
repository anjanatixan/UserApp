import 'package:dio/dio.dart';
import 'package:sampleuser/apiServices/baseService.dart';
import 'package:sampleuser/apiServices/urls.dart';

class ApiService extends BaseService {
  Dio dio = Dio();

  @override
  Future deleteResponse(String url, var headers) async {
    try {
      Response response = await dio.delete(Urls.BASE_URL + url,
          options: Options(headers: headers));
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future<Response?> getResponse(String url, headers) async {
    try {
      Response response = await dio.get(Urls.BASE_URL + url,
          options: Options(headers: headers));
      return response.data;
    } catch (e) {
      return null;
    }
  }

  @override
  Future patchResponse(String url, body, headers) async {
    try {
      Response response = await dio.patch(Urls.BASE_URL + url,
          data: body, options: Options(headers: headers));
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future postResponse(String url, body, headers) async {
    try {
      Response response = await dio.post(Urls.BASE_URL + url,
          data: body, options: Options(headers: headers));
      return response.data;
    } catch (e) {
      throw e;
    }
  }

  @override
  Future putResponse(String url, body, headers) async {
    try {
      Response response = await dio.put(Urls.BASE_URL + url,
          data: body, options: Options(headers: headers));
      return response.data;
    } catch (e) {
      throw e;
    }
  }
}
