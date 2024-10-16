// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataListImpl _$$ResponseDataListImplFromJson(
        Map<String, dynamic> json) =>
    _$ResponseDataListImpl(
      type: $enumDecodeNullable(_$ItemTypeEnumMap, json['type']),
      customAttributes: json['customAttributes'] == null
          ? null
          : CustomAttributes.fromJson(
              json['customAttributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDataListImplToJson(
        _$ResponseDataListImpl instance) =>
    <String, dynamic>{
      'type': _$ItemTypeEnumMap[instance.type],
      'customAttributes': instance.customAttributes,
    };

const _$ItemTypeEnumMap = {
  ItemType.label: 'Label',
  ItemType.productSubmitForm: 'ProductSubmitForm',
  ItemType.button: 'Button',
  ItemType.productList: 'ProductList',
};
