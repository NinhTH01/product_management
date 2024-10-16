import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_management/data/models/api/response/custom_attributes/custom_attributes.dart';

part 'response_data_list.freezed.dart';
part 'response_data_list.g.dart';

enum ItemType {
  @JsonValue("Label")
  label,
  @JsonValue('ProductSubmitForm')
  productSubmitForm,
  @JsonValue('Button')
  button,
  @JsonValue('ProductList')
  productList,
}

@freezed
class ResponseDataList with _$ResponseDataList {
  const factory ResponseDataList({
    ItemType? type,
    CustomAttributes? customAttributes,
  }) = _ResponseDataList;

  factory ResponseDataList.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataListFromJson(json);
}
