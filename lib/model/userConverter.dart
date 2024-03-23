
import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_model.dart';

class UserConverter
    implements JsonConverter<User, Map<String, dynamic>> {
  const UserConverter();

  @override
  User fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return User.fromJson(json);
  }

  @override
  Map<String, dynamic> toJson(User object) => {};

}
