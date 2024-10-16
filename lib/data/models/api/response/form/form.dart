import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';
part 'form.g.dart';

enum FormType {
  @JsonValue("text")
  text,
  @JsonValue('number')
  number,
  @JsonValue('file_upload')
  fileUpload,
}

@freezed
class Form with _$Form {
  const factory Form({
    String? label,
    bool? required,
    String? name,
    FormType? type,
    int? maxLength,
    int? minValue,
    int? maxValue,
  }) = _Form;

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);
}
