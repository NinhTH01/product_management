import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_management/data/models/api/response/product_list/product_list.dart';
import 'package:product_management/data/models/api/response/response_data_list/response_data_list.dart';

part 'product_management_state.freezed.dart';

@freezed
class ProductManagementState with _$ProductManagementState {
  const factory ProductManagementState({
    @Default([]) List<ResponseDataList> apiData,
    ProductList? productList,
    String? imagePath,
    @Default(false) bool isLoading,
  }) = _ProductManagementState;

  const ProductManagementState._();
}
