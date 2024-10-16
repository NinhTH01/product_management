import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_management/data/models/api/response/item/item.dart';

part 'product_list.freezed.dart';
part 'product_list.g.dart';

@freezed
class ProductList with _$ProductList {
  const factory ProductList({
    List<Item>? items,
  }) = _ProductList;

  factory ProductList.fromJson(Map<String, dynamic> json) =>
      _$ProductListFromJson(json);
}
