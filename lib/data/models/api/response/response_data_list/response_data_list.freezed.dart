// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDataList _$ResponseDataListFromJson(Map<String, dynamic> json) {
  return _ResponseDataList.fromJson(json);
}

/// @nodoc
mixin _$ResponseDataList {
  ItemType? get type => throw _privateConstructorUsedError;
  CustomAttributes? get customAttributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataListCopyWith<ResponseDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataListCopyWith<$Res> {
  factory $ResponseDataListCopyWith(
          ResponseDataList value, $Res Function(ResponseDataList) then) =
      _$ResponseDataListCopyWithImpl<$Res, ResponseDataList>;
  @useResult
  $Res call({ItemType? type, CustomAttributes? customAttributes});

  $CustomAttributesCopyWith<$Res>? get customAttributes;
}

/// @nodoc
class _$ResponseDataListCopyWithImpl<$Res, $Val extends ResponseDataList>
    implements $ResponseDataListCopyWith<$Res> {
  _$ResponseDataListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? customAttributes = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType?,
      customAttributes: freezed == customAttributes
          ? _value.customAttributes
          : customAttributes // ignore: cast_nullable_to_non_nullable
              as CustomAttributes?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomAttributesCopyWith<$Res>? get customAttributes {
    if (_value.customAttributes == null) {
      return null;
    }

    return $CustomAttributesCopyWith<$Res>(_value.customAttributes!, (value) {
      return _then(_value.copyWith(customAttributes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDataListImplCopyWith<$Res>
    implements $ResponseDataListCopyWith<$Res> {
  factory _$$ResponseDataListImplCopyWith(_$ResponseDataListImpl value,
          $Res Function(_$ResponseDataListImpl) then) =
      __$$ResponseDataListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ItemType? type, CustomAttributes? customAttributes});

  @override
  $CustomAttributesCopyWith<$Res>? get customAttributes;
}

/// @nodoc
class __$$ResponseDataListImplCopyWithImpl<$Res>
    extends _$ResponseDataListCopyWithImpl<$Res, _$ResponseDataListImpl>
    implements _$$ResponseDataListImplCopyWith<$Res> {
  __$$ResponseDataListImplCopyWithImpl(_$ResponseDataListImpl _value,
      $Res Function(_$ResponseDataListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? customAttributes = freezed,
  }) {
    return _then(_$ResponseDataListImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType?,
      customAttributes: freezed == customAttributes
          ? _value.customAttributes
          : customAttributes // ignore: cast_nullable_to_non_nullable
              as CustomAttributes?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseDataListImpl implements _ResponseDataList {
  const _$ResponseDataListImpl({this.type, this.customAttributes});

  factory _$ResponseDataListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseDataListImplFromJson(json);

  @override
  final ItemType? type;
  @override
  final CustomAttributes? customAttributes;

  @override
  String toString() {
    return 'ResponseDataList(type: $type, customAttributes: $customAttributes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataListImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.customAttributes, customAttributes) ||
                other.customAttributes == customAttributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, customAttributes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataListImplCopyWith<_$ResponseDataListImpl> get copyWith =>
      __$$ResponseDataListImplCopyWithImpl<_$ResponseDataListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseDataListImplToJson(
      this,
    );
  }
}

abstract class _ResponseDataList implements ResponseDataList {
  const factory _ResponseDataList(
      {final ItemType? type,
      final CustomAttributes? customAttributes}) = _$ResponseDataListImpl;

  factory _ResponseDataList.fromJson(Map<String, dynamic> json) =
      _$ResponseDataListImpl.fromJson;

  @override
  ItemType? get type;
  @override
  CustomAttributes? get customAttributes;
  @override
  @JsonKey(ignore: true)
  _$$ResponseDataListImplCopyWith<_$ResponseDataListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
