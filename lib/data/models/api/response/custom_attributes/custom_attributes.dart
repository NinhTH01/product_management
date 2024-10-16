import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_management/data/models/api/response/button/button.dart';
import 'package:product_management/data/models/api/response/form/form.dart';
import 'package:product_management/data/models/api/response/label/label.dart';
import 'package:product_management/data/models/api/response/product_list/product_list.dart';

part 'custom_attributes.freezed.dart';
part 'custom_attributes.g.dart';

@freezed
class CustomAttributes with _$CustomAttributes {
  const factory CustomAttributes({
    Label? label,
    List<Form>? form,
    Button? button,
    @JsonKey(name: 'productlist') ProductList? productList,
  }) = _CustomAttributes;

  factory CustomAttributes.fromJson(Map<String, dynamic> json) =>
      _$CustomAttributesFromJson(json);
}
