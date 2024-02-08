import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'id')
  String? id;

  @JsonKey(name: 'brand')
  String? brand;

  @JsonKey(name: 'catogery')
  String? catogery;

  @JsonKey(name: 'description')
  String? description;

  @JsonKey(name: 'image')
  String? image;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'price')
  double? price;

  @JsonKey(name: 'offers')
  bool? offers;

  Product({
    this.brand,
    this.catogery,
    this.description,
    this.id,
    this.image,
    this.name,
    this.offers,
    this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
