// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
    bool success;
    String message;
    int totalUsers;
    int offset;
    int limit;
    List<User> users;

    UserModel({
        required this.success,
        required this.message,
        required this.totalUsers,
        required this.offset,
        required this.limit,
        required this.users,
    });

    factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        success: json["success"],
        message: json["message"],
        totalUsers: json["total_users"],
        offset: json["offset"],
        limit: json["limit"],
        users: List<User>.from(json["users"].map((x) => User.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "total_users": totalUsers,
        "offset": offset,
        "limit": limit,
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
    };
}

class User {
    int id;
    String gender;
    DateTime dateOfBirth;
    String job;
    String city;
    String zipcode;
    double latitude;
    String profilePicture;
    String firstName;
    String email;
    String lastName;
    String phone;
    String street;
    String state;
    String country;
    double longitude;

    User({
        required this.id,
        required this.gender,
        required this.dateOfBirth,
        required this.job,
        required this.city,
        required this.zipcode,
        required this.latitude,
        required this.profilePicture,
        required this.firstName,
        required this.email,
        required this.lastName,
        required this.phone,
        required this.street,
        required this.state,
        required this.country,
        required this.longitude,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        gender: json["gender"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        job: json["job"],
        city: json["city"],
        zipcode: json["zipcode"],
        latitude: json["latitude"]?.toDouble(),
        profilePicture: json["profile_picture"],
        firstName: json["first_name"],
        email: json["email"],
        lastName: json["last_name"],
        phone: json["phone"],
        street: json["street"],
        state: json["state"],
        country: json["country"],
        longitude: json["longitude"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "gender": gender,
        "date_of_birth": dateOfBirth.toIso8601String(),
        "job": job,
        "city": city,
        "zipcode": zipcode,
        "latitude": latitude,
        "profile_picture": profilePicture,
        "first_name": firstName,
        "email": email,
        "last_name": lastName,
        "phone": phone,
        "street": street,
        "state": state,
        "country": country,
        "longitude": longitude,
    };
}





