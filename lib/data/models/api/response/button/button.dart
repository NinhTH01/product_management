import 'package:freezed_annotation/freezed_annotation.dart';

part 'button.freezed.dart';
part 'button.g.dart';

@freezed
class Button with _$Button {
  const factory Button({
    String? text,
  }) = _Button;

  factory Button.fromJson(Map<String, dynamic> json) => _$ButtonFromJson(json);
}
