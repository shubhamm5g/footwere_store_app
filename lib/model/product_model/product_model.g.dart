// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      brand: json['brand'] as String?,
      catogery: json['catogery'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      offers: json['offers'] as bool?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'catogery': instance.catogery,
      'description': instance.description,
      'image': instance.image,
      'name': instance.name,
      'price': instance.price,
      'offers': instance.offers,
    };
