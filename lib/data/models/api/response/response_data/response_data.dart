import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:product_management/data/models/api/response/response_data_list/response_data_list.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    String? code,
    String? message,
    List<ResponseDataList>? data,
  }) = _ResponseData;

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);
}
