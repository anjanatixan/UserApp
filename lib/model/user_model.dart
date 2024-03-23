import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sampleuser/model/userConverter.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    bool? success,
    String? message,
    int? totalUsers,
    int? offset,
    int? limit,
    @UserConverter()
    required List<User> users,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> userData) =>
      _$UserModelFromJson(userData);
}

@freezed
class User with _$User {
    const User._();

  const factory User({
    int? id,
    String? gender,
    @JsonKey(name: "date_of_birth")
        DateTime? dateOfBirth,
    String? job,
    String? city,
    String? zipcode,
    double? latitude,
    @JsonKey(name: "profile_picture")
        String? profilePicture,
    @JsonKey(name: "first_name")
        String? firstName,
    String? email,
    @JsonKey(name: "last_name")
        String? lastName,
    String? phone,
    String? street,
    String? state,
    String? country,
    double? longitude,
    @Default("981234567")
        String? mob,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> userDetails) =>
      _$UserFromJson(userDetails);

  String getFormattedDateOfBirth() {
    if (dateOfBirth != null) {
      // Format date as dd-mm-yyyy
      return "${dateOfBirth!.day.toString().padLeft(2, '0')}-"
             "${dateOfBirth!.month.toString().padLeft(2, '0')}-"
             "${dateOfBirth!.year}";
    } else {
      return "";
    }
  }
}
  

