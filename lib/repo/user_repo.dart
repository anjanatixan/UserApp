import 'package:sampleuser/apiServices/urls.dart';
import 'package:sampleuser/apiServices/webService.dart';
import 'package:sampleuser/model/user_model.dart';

class UserRepo {
  ApiService _service = ApiService();

  Future<UserModel?> getUserlist(var count ) async {
  Map<String, String> headers = {
    "Content-Type": "application/json",
  };

  final dynamic response = await _service.getResponse(
      Urls.USER_LIST + "?limit=" + count.toString(), headers);

  if (response is Map<String, dynamic>) {
    // Handle successful response
    UserModel model = UserModel.fromJson(response);
    return model;
  } else {
    // Handle error or unexpected response
    print("Unexpected response: $response");
    return null;
  }
}
}
