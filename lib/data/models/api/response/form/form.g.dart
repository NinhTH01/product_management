// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormImpl _$$FormImplFromJson(Map<String, dynamic> json) => _$FormImpl(
      label: json['label'] as String?,
      required: json['required'] as bool?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$FormTypeEnumMap, json['type']),
      maxLength: (json['maxLength'] as num?)?.toInt(),
      minValue: (json['minValue'] as num?)?.toInt(),
      maxValue: (json['maxValue'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FormImplToJson(_$FormImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'required': instance.required,
      'name': instance.name,
      'type': _$FormTypeEnumMap[instance.type],
      'maxLength': instance.maxLength,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
    };

const _$FormTypeEnumMap = {
  FormType.text: 'text',
  FormType.number: 'number',
  FormType.fileUpload: 'file_upload',
};
