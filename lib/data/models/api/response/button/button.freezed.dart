// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Button _$ButtonFromJson(Map<String, dynamic> json) {
  return _Button.fromJson(json);
}

/// @nodoc
mixin _$Button {
  String? get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ButtonCopyWith<Button> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ButtonCopyWith<$Res> {
  factory $ButtonCopyWith(Button value, $Res Function(Button) then) =
      _$ButtonCopyWithImpl<$Res, Button>;
  @useResult
  $Res call({String? text});
}

/// @nodoc
class _$ButtonCopyWithImpl<$Res, $Val extends Button>
    implements $ButtonCopyWith<$Res> {
  _$ButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ButtonImplCopyWith<$Res> implements $ButtonCopyWith<$Res> {
  factory _$$ButtonImplCopyWith(
          _$ButtonImpl value, $Res Function(_$ButtonImpl) then) =
      __$$ButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? text});
}

/// @nodoc
class __$$ButtonImplCopyWithImpl<$Res>
    extends _$ButtonCopyWithImpl<$Res, _$ButtonImpl>
    implements _$$ButtonImplCopyWith<$Res> {
  __$$ButtonImplCopyWithImpl(
      _$ButtonImpl _value, $Res Function(_$ButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$ButtonImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ButtonImpl implements _Button {
  const _$ButtonImpl({this.text});

  factory _$ButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ButtonImplFromJson(json);

  @override
  final String? text;

  @override
  String toString() {
    return 'Button(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonImplCopyWith<_$ButtonImpl> get copyWith =>
      __$$ButtonImplCopyWithImpl<_$ButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ButtonImplToJson(
      this,
    );
  }
}

abstract class _Button implements Button {
  const factory _Button({final String? text}) = _$ButtonImpl;

  factory _Button.fromJson(Map<String, dynamic> json) = _$ButtonImpl.fromJson;

  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$ButtonImplCopyWith<_$ButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
