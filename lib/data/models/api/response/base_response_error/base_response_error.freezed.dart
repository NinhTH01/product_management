// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseResponseError _$BaseResponseErrorFromJson(Map<String, dynamic> json) {
  return _BaseResponseError.fromJson(json);
}

/// @nodoc
mixin _$BaseResponseError {
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseResponseErrorCopyWith<BaseResponseError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseResponseErrorCopyWith<$Res> {
  factory $BaseResponseErrorCopyWith(
          BaseResponseError value, $Res Function(BaseResponseError) then) =
      _$BaseResponseErrorCopyWithImpl<$Res, BaseResponseError>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$BaseResponseErrorCopyWithImpl<$Res, $Val extends BaseResponseError>
    implements $BaseResponseErrorCopyWith<$Res> {
  _$BaseResponseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseResponseErrorImplCopyWith<$Res>
    implements $BaseResponseErrorCopyWith<$Res> {
  factory _$$BaseResponseErrorImplCopyWith(_$BaseResponseErrorImpl value,
          $Res Function(_$BaseResponseErrorImpl) then) =
      __$$BaseResponseErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$BaseResponseErrorImplCopyWithImpl<$Res>
    extends _$BaseResponseErrorCopyWithImpl<$Res, _$BaseResponseErrorImpl>
    implements _$$BaseResponseErrorImplCopyWith<$Res> {
  __$$BaseResponseErrorImplCopyWithImpl(_$BaseResponseErrorImpl _value,
      $Res Function(_$BaseResponseErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$BaseResponseErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseResponseErrorImpl extends _BaseResponseError {
  _$BaseResponseErrorImpl({this.message}) : super._();

  factory _$BaseResponseErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseResponseErrorImplFromJson(json);

  @override
  final String? message;

  @override
  String toString() {
    return 'BaseResponseError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseResponseErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseResponseErrorImplCopyWith<_$BaseResponseErrorImpl> get copyWith =>
      __$$BaseResponseErrorImplCopyWithImpl<_$BaseResponseErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseResponseErrorImplToJson(
      this,
    );
  }
}

abstract class _BaseResponseError extends BaseResponseError {
  factory _BaseResponseError({final String? message}) = _$BaseResponseErrorImpl;
  _BaseResponseError._() : super._();

  factory _BaseResponseError.fromJson(Map<String, dynamic> json) =
      _$BaseResponseErrorImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BaseResponseErrorImplCopyWith<_$BaseResponseErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
