// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserRegistration _$UserRegistrationFromJson(Map<String, dynamic> json) {
  return _UserRegistration.fromJson(json);
}

/// @nodoc
mixin _$UserRegistration {
  String get imageLink => throw _privateConstructorUsedError;
  String get userType => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get collageName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegistrationCopyWith<UserRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationCopyWith<$Res> {
  factory $UserRegistrationCopyWith(
          UserRegistration value, $Res Function(UserRegistration) then) =
      _$UserRegistrationCopyWithImpl<$Res, UserRegistration>;
  @useResult
  $Res call(
      {String imageLink,
      String userType,
      String email,
      String password,
      String mobile,
      String name,
      String collageName});
}

/// @nodoc
class _$UserRegistrationCopyWithImpl<$Res, $Val extends UserRegistration>
    implements $UserRegistrationCopyWith<$Res> {
  _$UserRegistrationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageLink = null,
    Object? userType = null,
    Object? email = null,
    Object? password = null,
    Object? mobile = null,
    Object? name = null,
    Object? collageName = null,
  }) {
    return _then(_value.copyWith(
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      collageName: null == collageName
          ? _value.collageName
          : collageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRegistrationCopyWith<$Res>
    implements $UserRegistrationCopyWith<$Res> {
  factory _$$_UserRegistrationCopyWith(
          _$_UserRegistration value, $Res Function(_$_UserRegistration) then) =
      __$$_UserRegistrationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imageLink,
      String userType,
      String email,
      String password,
      String mobile,
      String name,
      String collageName});
}

/// @nodoc
class __$$_UserRegistrationCopyWithImpl<$Res>
    extends _$UserRegistrationCopyWithImpl<$Res, _$_UserRegistration>
    implements _$$_UserRegistrationCopyWith<$Res> {
  __$$_UserRegistrationCopyWithImpl(
      _$_UserRegistration _value, $Res Function(_$_UserRegistration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageLink = null,
    Object? userType = null,
    Object? email = null,
    Object? password = null,
    Object? mobile = null,
    Object? name = null,
    Object? collageName = null,
  }) {
    return _then(_$_UserRegistration(
      imageLink: null == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      collageName: null == collageName
          ? _value.collageName
          : collageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegistration implements _UserRegistration {
  _$_UserRegistration(
      {this.imageLink = '',
      this.userType = '',
      this.email = '',
      this.password = '',
      this.mobile = '',
      this.name = '',
      this.collageName = ''});

  factory _$_UserRegistration.fromJson(Map<String, dynamic> json) =>
      _$$_UserRegistrationFromJson(json);

  @override
  @JsonKey()
  final String imageLink;
  @override
  @JsonKey()
  final String userType;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String collageName;

  @override
  String toString() {
    return 'UserRegistration(imageLink: $imageLink, userType: $userType, email: $email, password: $password, mobile: $mobile, name: $name, collageName: $collageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegistration &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.collageName, collageName) ||
                other.collageName == collageName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageLink, userType, email,
      password, mobile, name, collageName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegistrationCopyWith<_$_UserRegistration> get copyWith =>
      __$$_UserRegistrationCopyWithImpl<_$_UserRegistration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRegistrationToJson(
      this,
    );
  }
}

abstract class _UserRegistration implements UserRegistration {
  factory _UserRegistration(
      {final String imageLink,
      final String userType,
      final String email,
      final String password,
      final String mobile,
      final String name,
      final String collageName}) = _$_UserRegistration;

  factory _UserRegistration.fromJson(Map<String, dynamic> json) =
      _$_UserRegistration.fromJson;

  @override
  String get imageLink;
  @override
  String get userType;
  @override
  String get email;
  @override
  String get password;
  @override
  String get mobile;
  @override
  String get name;
  @override
  String get collageName;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegistrationCopyWith<_$_UserRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}
