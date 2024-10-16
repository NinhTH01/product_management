// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_attributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomAttributesImpl _$$CustomAttributesImplFromJson(
        Map<String, dynamic> json) =>
    _$CustomAttributesImpl(
      label: json['label'] == null
          ? null
          : Label.fromJson(json['label'] as Map<String, dynamic>),
      form: (json['form'] as List<dynamic>?)
          ?.map((e) => Form.fromJson(e as Map<String, dynamic>))
          .toList(),
      button: json['button'] == null
          ? null
          : Button.fromJson(json['button'] as Map<String, dynamic>),
      productList: json['productlist'] == null
          ? null
          : ProductList.fromJson(json['productlist'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CustomAttributesImplToJson(
        _$CustomAttributesImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'form': instance.form,
      'button': instance.button,
      'productlist': instance.productList,
    };
