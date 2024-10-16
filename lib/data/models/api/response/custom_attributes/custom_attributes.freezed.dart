// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_attributes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomAttributes _$CustomAttributesFromJson(Map<String, dynamic> json) {
  return _CustomAttributes.fromJson(json);
}

/// @nodoc
mixin _$CustomAttributes {
  Label? get label => throw _privateConstructorUsedError;
  List<Form>? get form => throw _privateConstructorUsedError;
  Button? get button => throw _privateConstructorUsedError;
  @JsonKey(name: 'productlist')
  ProductList? get productList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomAttributesCopyWith<CustomAttributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomAttributesCopyWith<$Res> {
  factory $CustomAttributesCopyWith(
          CustomAttributes value, $Res Function(CustomAttributes) then) =
      _$CustomAttributesCopyWithImpl<$Res, CustomAttributes>;
  @useResult
  $Res call(
      {Label? label,
      List<Form>? form,
      Button? button,
      @JsonKey(name: 'productlist') ProductList? productList});

  $LabelCopyWith<$Res>? get label;
  $ButtonCopyWith<$Res>? get button;
  $ProductListCopyWith<$Res>? get productList;
}

/// @nodoc
class _$CustomAttributesCopyWithImpl<$Res, $Val extends CustomAttributes>
    implements $CustomAttributesCopyWith<$Res> {
  _$CustomAttributesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? form = freezed,
    Object? button = freezed,
    Object? productList = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as List<Form>?,
      button: freezed == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as Button?,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ButtonCopyWith<$Res>? get button {
    if (_value.button == null) {
      return null;
    }

    return $ButtonCopyWith<$Res>(_value.button!, (value) {
      return _then(_value.copyWith(button: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductListCopyWith<$Res>? get productList {
    if (_value.productList == null) {
      return null;
    }

    return $ProductListCopyWith<$Res>(_value.productList!, (value) {
      return _then(_value.copyWith(productList: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CustomAttributesImplCopyWith<$Res>
    implements $CustomAttributesCopyWith<$Res> {
  factory _$$CustomAttributesImplCopyWith(_$CustomAttributesImpl value,
          $Res Function(_$CustomAttributesImpl) then) =
      __$$CustomAttributesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Label? label,
      List<Form>? form,
      Button? button,
      @JsonKey(name: 'productlist') ProductList? productList});

  @override
  $LabelCopyWith<$Res>? get label;
  @override
  $ButtonCopyWith<$Res>? get button;
  @override
  $ProductListCopyWith<$Res>? get productList;
}

/// @nodoc
class __$$CustomAttributesImplCopyWithImpl<$Res>
    extends _$CustomAttributesCopyWithImpl<$Res, _$CustomAttributesImpl>
    implements _$$CustomAttributesImplCopyWith<$Res> {
  __$$CustomAttributesImplCopyWithImpl(_$CustomAttributesImpl _value,
      $Res Function(_$CustomAttributesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
    Object? form = freezed,
    Object? button = freezed,
    Object? productList = freezed,
  }) {
    return _then(_$CustomAttributesImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
      form: freezed == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as List<Form>?,
      button: freezed == button
          ? _value.button
          : button // ignore: cast_nullable_to_non_nullable
              as Button?,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomAttributesImpl implements _CustomAttributes {
  const _$CustomAttributesImpl(
      {this.label,
      final List<Form>? form,
      this.button,
      @JsonKey(name: 'productlist') this.productList})
      : _form = form;

  factory _$CustomAttributesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomAttributesImplFromJson(json);

  @override
  final Label? label;
  final List<Form>? _form;
  @override
  List<Form>? get form {
    final value = _form;
    if (value == null) return null;
    if (_form is EqualUnmodifiableListView) return _form;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Button? button;
  @override
  @JsonKey(name: 'productlist')
  final ProductList? productList;

  @override
  String toString() {
    return 'CustomAttributes(label: $label, form: $form, button: $button, productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomAttributesImpl &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality().equals(other._form, _form) &&
            (identical(other.button, button) || other.button == button) &&
            (identical(other.productList, productList) ||
                other.productList == productList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label,
      const DeepCollectionEquality().hash(_form), button, productList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomAttributesImplCopyWith<_$CustomAttributesImpl> get copyWith =>
      __$$CustomAttributesImplCopyWithImpl<_$CustomAttributesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomAttributesImplToJson(
      this,
    );
  }
}

abstract class _CustomAttributes implements CustomAttributes {
  const factory _CustomAttributes(
          {final Label? label,
          final List<Form>? form,
          final Button? button,
          @JsonKey(name: 'productlist') final ProductList? productList}) =
      _$CustomAttributesImpl;

  factory _CustomAttributes.fromJson(Map<String, dynamic> json) =
      _$CustomAttributesImpl.fromJson;

  @override
  Label? get label;
  @override
  List<Form>? get form;
  @override
  Button? get button;
  @override
  @JsonKey(name: 'productlist')
  ProductList? get productList;
  @override
  @JsonKey(ignore: true)
  _$$CustomAttributesImplCopyWith<_$CustomAttributesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
