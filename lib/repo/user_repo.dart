import 'dart:convert';
import 'package:sampleuser/apiServices/urls.dart';
import 'package:sampleuser/apiServices/webService.dart';
import 'package:sampleuser/model/user_model.dart';

class UserRepo {
  ApiService _service = ApiService();

  Future<UserModel?> getUserlist(var count) async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
    };

    final response = await _service.getResponse(
        Urls.USER_LIST + "?limit=" + count.toString(), headers);

    if (response.statusCode == 200) {
      
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      UserModel model = UserModel.fromJson(responseBody);
      return model;
     
    } 
    return null;
  }
}
