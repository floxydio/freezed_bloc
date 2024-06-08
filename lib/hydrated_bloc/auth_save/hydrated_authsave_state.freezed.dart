// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hydrated_authsave_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HydratedAuthsaveState {
  String get email => throw _privateConstructorUsedError;
  bool get isSave => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HydratedAuthsaveStateCopyWith<HydratedAuthsaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HydratedAuthsaveStateCopyWith<$Res> {
  factory $HydratedAuthsaveStateCopyWith(HydratedAuthsaveState value,
          $Res Function(HydratedAuthsaveState) then) =
      _$HydratedAuthsaveStateCopyWithImpl<$Res, HydratedAuthsaveState>;
  @useResult
  $Res call({String email, bool isSave});
}

/// @nodoc
class _$HydratedAuthsaveStateCopyWithImpl<$Res,
        $Val extends HydratedAuthsaveState>
    implements $HydratedAuthsaveStateCopyWith<$Res> {
  _$HydratedAuthsaveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isSave = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HydratedAuthsaveStateImplCopyWith<$Res>
    implements $HydratedAuthsaveStateCopyWith<$Res> {
  factory _$$HydratedAuthsaveStateImplCopyWith(
          _$HydratedAuthsaveStateImpl value,
          $Res Function(_$HydratedAuthsaveStateImpl) then) =
      __$$HydratedAuthsaveStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool isSave});
}

/// @nodoc
class __$$HydratedAuthsaveStateImplCopyWithImpl<$Res>
    extends _$HydratedAuthsaveStateCopyWithImpl<$Res,
        _$HydratedAuthsaveStateImpl>
    implements _$$HydratedAuthsaveStateImplCopyWith<$Res> {
  __$$HydratedAuthsaveStateImplCopyWithImpl(_$HydratedAuthsaveStateImpl _value,
      $Res Function(_$HydratedAuthsaveStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isSave = null,
  }) {
    return _then(_$HydratedAuthsaveStateImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isSave: null == isSave
          ? _value.isSave
          : isSave // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HydratedAuthsaveStateImpl implements _HydratedAuthsaveState {
  const _$HydratedAuthsaveStateImpl(
      {required this.email, required this.isSave});

  @override
  final String email;
  @override
  final bool isSave;

  @override
  String toString() {
    return 'HydratedAuthsaveState(email: $email, isSave: $isSave)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HydratedAuthsaveStateImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isSave, isSave) || other.isSave == isSave));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isSave);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HydratedAuthsaveStateImplCopyWith<_$HydratedAuthsaveStateImpl>
      get copyWith => __$$HydratedAuthsaveStateImplCopyWithImpl<
          _$HydratedAuthsaveStateImpl>(this, _$identity);
}

abstract class _HydratedAuthsaveState implements HydratedAuthsaveState {
  const factory _HydratedAuthsaveState(
      {required final String email,
      required final bool isSave}) = _$HydratedAuthsaveStateImpl;

  @override
  String get email;
  @override
  bool get isSave;
  @override
  @JsonKey(ignore: true)
  _$$HydratedAuthsaveStateImplCopyWith<_$HydratedAuthsaveStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
