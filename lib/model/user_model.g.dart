// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      totalUsers: json['totalUsers'] as int?,
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
      users: (json['users'] as List<dynamic>)
          .map((e) => const UserConverter().fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'totalUsers': instance.totalUsers,
      'offset': instance.offset,
      'limit': instance.limit,
      'users': instance.users.map(const UserConverter().toJson).toList(),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as int?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      job: json['job'] as String?,
      city: json['city'] as String?,
      zipcode: json['zipcode'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      profilePicture: json['profile_picture'] as String?,
      firstName: json['first_name'] as String?,
      email: json['email'] as String?,
      lastName: json['last_name'] as String?,
      phone: json['phone'] as String?,
      street: json['street'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      longitude: (json['longitude'] as num?)?.toDouble(),
      mob: json['mob'] as String? ?? "981234567",
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'job': instance.job,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'latitude': instance.latitude,
      'profile_picture': instance.profilePicture,
      'first_name': instance.firstName,
      'email': instance.email,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'street': instance.street,
      'state': instance.state,
      'country': instance.country,
      'longitude': instance.longitude,
      'mob': instance.mob,
    };
