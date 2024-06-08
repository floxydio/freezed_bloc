// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthSignupState {
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get isSuccess => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isNameValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSignupStateCopyWith<AuthSignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignupStateCopyWith<$Res> {
  factory $AuthSignupStateCopyWith(
          AuthSignupState value, $Res Function(AuthSignupState) then) =
      _$AuthSignupStateCopyWithImpl<$Res, AuthSignupState>;
  @useResult
  $Res call(
      {String email,
      String name,
      String password,
      String isSuccess,
      bool isEmailValid,
      bool isNameValid,
      bool isPasswordValid});
}

/// @nodoc
class _$AuthSignupStateCopyWithImpl<$Res, $Val extends AuthSignupState>
    implements $AuthSignupStateCopyWith<$Res> {
  _$AuthSignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? isSuccess = null,
    Object? isEmailValid = null,
    Object? isNameValid = null,
    Object? isPasswordValid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthSignupStateImplCopyWith<$Res>
    implements $AuthSignupStateCopyWith<$Res> {
  factory _$$AuthSignupStateImplCopyWith(_$AuthSignupStateImpl value,
          $Res Function(_$AuthSignupStateImpl) then) =
      __$$AuthSignupStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String name,
      String password,
      String isSuccess,
      bool isEmailValid,
      bool isNameValid,
      bool isPasswordValid});
}

/// @nodoc
class __$$AuthSignupStateImplCopyWithImpl<$Res>
    extends _$AuthSignupStateCopyWithImpl<$Res, _$AuthSignupStateImpl>
    implements _$$AuthSignupStateImplCopyWith<$Res> {
  __$$AuthSignupStateImplCopyWithImpl(
      _$AuthSignupStateImpl _value, $Res Function(_$AuthSignupStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? password = null,
    Object? isSuccess = null,
    Object? isEmailValid = null,
    Object? isNameValid = null,
    Object? isPasswordValid = null,
  }) {
    return _then(_$AuthSignupStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isNameValid: null == isNameValid
          ? _value.isNameValid
          : isNameValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AuthSignupStateImpl implements _AuthSignupState {
  const _$AuthSignupStateImpl(
      {required this.email,
      required this.name,
      required this.password,
      required this.isSuccess,
      required this.isEmailValid,
      required this.isNameValid,
      required this.isPasswordValid});

  @override
  final String email;
  @override
  final String name;
  @override
  final String password;
  @override
  final String isSuccess;
  @override
  final bool isEmailValid;
  @override
  final bool isNameValid;
  @override
  final bool isPasswordValid;

  @override
  String toString() {
    return 'AuthSignupState(email: $email, name: $name, password: $password, isSuccess: $isSuccess, isEmailValid: $isEmailValid, isNameValid: $isNameValid, isPasswordValid: $isPasswordValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSignupStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isNameValid, isNameValid) ||
                other.isNameValid == isNameValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, password, isSuccess,
      isEmailValid, isNameValid, isPasswordValid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSignupStateImplCopyWith<_$AuthSignupStateImpl> get copyWith =>
      __$$AuthSignupStateImplCopyWithImpl<_$AuthSignupStateImpl>(
          this, _$identity);
}

abstract class _AuthSignupState implements AuthSignupState {
  const factory _AuthSignupState(
      {required final String email,
      required final String name,
      required final String password,
      required final String isSuccess,
      required final bool isEmailValid,
      required final bool isNameValid,
      required final bool isPasswordValid}) = _$AuthSignupStateImpl;

  @override
  String get email;
  @override
  String get name;
  @override
  String get password;
  @override
  String get isSuccess;
  @override
  bool get isEmailValid;
  @override
  bool get isNameValid;
  @override
  bool get isPasswordValid;
  @override
  @JsonKey(ignore: true)
  _$$AuthSignupStateImplCopyWith<_$AuthSignupStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
