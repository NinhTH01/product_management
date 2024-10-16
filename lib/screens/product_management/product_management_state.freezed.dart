// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_management_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductManagementState {
  List<ResponseDataList> get apiData => throw _privateConstructorUsedError;
  ProductList? get productList => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductManagementStateCopyWith<ProductManagementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductManagementStateCopyWith<$Res> {
  factory $ProductManagementStateCopyWith(ProductManagementState value,
          $Res Function(ProductManagementState) then) =
      _$ProductManagementStateCopyWithImpl<$Res, ProductManagementState>;
  @useResult
  $Res call(
      {List<ResponseDataList> apiData,
      ProductList? productList,
      String? imagePath,
      bool isLoading});

  $ProductListCopyWith<$Res>? get productList;
}

/// @nodoc
class _$ProductManagementStateCopyWithImpl<$Res,
        $Val extends ProductManagementState>
    implements $ProductManagementStateCopyWith<$Res> {
  _$ProductManagementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiData = null,
    Object? productList = freezed,
    Object? imagePath = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      apiData: null == apiData
          ? _value.apiData
          : apiData // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataList>,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductList?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
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
abstract class _$$ProductManagementStateImplCopyWith<$Res>
    implements $ProductManagementStateCopyWith<$Res> {
  factory _$$ProductManagementStateImplCopyWith(
          _$ProductManagementStateImpl value,
          $Res Function(_$ProductManagementStateImpl) then) =
      __$$ProductManagementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ResponseDataList> apiData,
      ProductList? productList,
      String? imagePath,
      bool isLoading});

  @override
  $ProductListCopyWith<$Res>? get productList;
}

/// @nodoc
class __$$ProductManagementStateImplCopyWithImpl<$Res>
    extends _$ProductManagementStateCopyWithImpl<$Res,
        _$ProductManagementStateImpl>
    implements _$$ProductManagementStateImplCopyWith<$Res> {
  __$$ProductManagementStateImplCopyWithImpl(
      _$ProductManagementStateImpl _value,
      $Res Function(_$ProductManagementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiData = null,
    Object? productList = freezed,
    Object? imagePath = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$ProductManagementStateImpl(
      apiData: null == apiData
          ? _value._apiData
          : apiData // ignore: cast_nullable_to_non_nullable
              as List<ResponseDataList>,
      productList: freezed == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as ProductList?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductManagementStateImpl extends _ProductManagementState {
  const _$ProductManagementStateImpl(
      {final List<ResponseDataList> apiData = const [],
      this.productList,
      this.imagePath,
      this.isLoading = false})
      : _apiData = apiData,
        super._();

  final List<ResponseDataList> _apiData;
  @override
  @JsonKey()
  List<ResponseDataList> get apiData {
    if (_apiData is EqualUnmodifiableListView) return _apiData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apiData);
  }

  @override
  final ProductList? productList;
  @override
  final String? imagePath;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'ProductManagementState(apiData: $apiData, productList: $productList, imagePath: $imagePath, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductManagementStateImpl &&
            const DeepCollectionEquality().equals(other._apiData, _apiData) &&
            (identical(other.productList, productList) ||
                other.productList == productList) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_apiData),
      productList,
      imagePath,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductManagementStateImplCopyWith<_$ProductManagementStateImpl>
      get copyWith => __$$ProductManagementStateImplCopyWithImpl<
          _$ProductManagementStateImpl>(this, _$identity);
}

abstract class _ProductManagementState extends ProductManagementState {
  const factory _ProductManagementState(
      {final List<ResponseDataList> apiData,
      final ProductList? productList,
      final String? imagePath,
      final bool isLoading}) = _$ProductManagementStateImpl;
  const _ProductManagementState._() : super._();

  @override
  List<ResponseDataList> get apiData;
  @override
  ProductList? get productList;
  @override
  String? get imagePath;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$ProductManagementStateImplCopyWith<_$ProductManagementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
