import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration.freezed.dart';
part 'user_registration.g.dart';

@freezed
class UserRegistration with _$UserRegistration {
  factory UserRegistration({
    @Default('') String imageLink,
    @Default('') String userType,
    @Default('') String email,
    @Default('') String password,
    @Default('') String mobile,
    @Default('') String name,
    @Default('') String collageName,
  }) = _UserRegistration;

  factory UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationFromJson(json);
}
