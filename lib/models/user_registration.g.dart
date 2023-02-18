// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserRegistration _$$_UserRegistrationFromJson(Map<String, dynamic> json) =>
    _$_UserRegistration(
      imageLink: json['imageLink'] as String? ?? '',
      userType: json['userType'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      name: json['name'] as String? ?? '',
      collageName: json['collageName'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserRegistrationToJson(_$_UserRegistration instance) =>
    <String, dynamic>{
      'imageLink': instance.imageLink,
      'userType': instance.userType,
      'email': instance.email,
      'password': instance.password,
      'mobile': instance.mobile,
      'name': instance.name,
      'collageName': instance.collageName,
    };
