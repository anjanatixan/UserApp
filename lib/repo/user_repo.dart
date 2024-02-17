import 'dart:convert';
import 'dart:developer';
import 'package:provider/provider.dart';
import 'package:sampleuser/apiServices/urls.dart';
import 'package:sampleuser/apiServices/webService.dart';
import 'package:sampleuser/helper/utils.dart';
import 'package:sampleuser/model/user_model.dart';
import 'package:sampleuser/provider/user_provider.dart';

class UserRepo {
  ApiService _service = ApiService();

  Future<String> getUserlist(var count) async {
    Map<String, String> headers = {
      "Content-Type": "application/json",
    };

    final response = await _service.getResponse(
        Urls.USER_LIST + "?limit=" + count.toString(), headers);

    if (response.statusCode == 200) {
      Map<String, dynamic> responseBody = jsonDecode(response.body);
      UserModel model = UserModel.fromJson(responseBody);
      getContext().read<UserProvider>().setUserList(model);
      log("message" + responseBody.toString());
    } else {
      // NavigationUtils.goBack(getContext());
      //    Map<String, dynamic> responseBody = jsonDecode(response.body);
      // showToast(getContext(), responseBody["message"], Colors.red, Colors.red);
    }
    return "";
  }
}
