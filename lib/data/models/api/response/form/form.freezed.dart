// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Form _$FormFromJson(Map<String, dynamic> json) {
  return _Form.fromJson(json);
}

/// @nodoc
mixin _$Form {
  String? get label => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  FormType? get type => throw _privateConstructorUsedError;
  int? get maxLength => throw _privateConstructorUsedError;
  int? get minValue => throw _privateConstructorUsedError;
  int? get maxValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormCopyWith<Form> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormCopyWith<$Res> {
  factory $FormCopyWith(Form value, $Res Function(Form) then) =
      _$FormCopyWithImpl<$Res, Form>;
  @useResult
  $Res call(
      {String? label,
      bool? required,
      String? name,
      FormType? type,
      int? maxLength,
      int? minValue,
      int? maxValue});
}

/// @nodoc
class _$FormCopyWithImpl<$Res, $Val extends Form>
    implements $FormCopyWith<$Res> {
  _$FormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? required = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? maxLength = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormType?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      minValue: freezed == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormImplCopyWith<$Res> implements $FormCopyWith<$Res> {
  factory _$$FormImplCopyWith(
          _$FormImpl value, $Res Function(_$FormImpl) then) =
      __$$FormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? label,
      bool? required,
      String? name,
      FormType? type,
      int? maxLength,
      int? minValue,
      int? maxValue});
}

/// @nodoc
class __$$FormImplCopyWithImpl<$Res>
    extends _$FormCopyWithImpl<$Res, _$FormImpl>
    implements _$$FormImplCopyWith<$Res> {
  __$$FormImplCopyWithImpl(_$FormImpl _value, $Res Function(_$FormImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? required = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? maxLength = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_$FormImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormType?,
      maxLength: freezed == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int?,
      minValue: freezed == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormImpl implements _Form {
  const _$FormImpl(
      {this.label,
      this.required,
      this.name,
      this.type,
      this.maxLength,
      this.minValue,
      this.maxValue});

  factory _$FormImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormImplFromJson(json);

  @override
  final String? label;
  @override
  final bool? required;
  @override
  final String? name;
  @override
  final FormType? type;
  @override
  final int? maxLength;
  @override
  final int? minValue;
  @override
  final int? maxValue;

  @override
  String toString() {
    return 'Form(label: $label, required: $required, name: $name, type: $type, maxLength: $maxLength, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, label, required, name, type, maxLength, minValue, maxValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
      __$$FormImplCopyWithImpl<_$FormImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormImplToJson(
      this,
    );
  }
}

abstract class _Form implements Form {
  const factory _Form(
      {final String? label,
      final bool? required,
      final String? name,
      final FormType? type,
      final int? maxLength,
      final int? minValue,
      final int? maxValue}) = _$FormImpl;

  factory _Form.fromJson(Map<String, dynamic> json) = _$FormImpl.fromJson;

  @override
  String? get label;
  @override
  bool? get required;
  @override
  String? get name;
  @override
  FormType? get type;
  @override
  int? get maxLength;
  @override
  int? get minValue;
  @override
  int? get maxValue;
  @override
  @JsonKey(ignore: true)
  _$$FormImplCopyWith<_$FormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
