import 'dart:convert';

List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.image,
    this.isVisible,
    this.isAvailable,
    this.foodItemCategory,
    this.price,
    this.stockItems,
  });

  final int? id;
  final String? name;
  final String? image;
  final int? isVisible;
  final int? isAvailable;
  final List<FoodItemCategory>? foodItemCategory;
  final List<Price>? price;
  final List<StockItem>? stockItems;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        image: json["image"] == null ? null : json["image"],
        isVisible: json["is_visible"] == null ? null : json["is_visible"],
        isAvailable: json["is_available"] == null ? null : json["is_available"],
        foodItemCategory: json["food_item_category"] == null
            ? null
            : List<FoodItemCategory>.from(json["food_item_category"]
                .map((x) => FoodItemCategory.fromJson(x))),
        price: json["price"] == null
            ? null
            : List<Price>.from(json["price"].map((x) => Price.fromJson(x))),
        stockItems: json["stock_items"] == null
            ? null
            : List<StockItem>.from(
                json["stock_items"].map((x) => StockItem.fromJson(x))),
      );
}

class FoodItemCategory {
  FoodItemCategory({
    this.id,
    this.name,
  });

  final int? id;
  final String? name;

  factory FoodItemCategory.fromJson(Map<String, dynamic> json) =>
      FoodItemCategory(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );
}

class Price {
  Price({
    this.originalPrice,
    this.discountedPrice,
    this.discountType,
    this.fixedValue,
    this.percentOf,
  });

  final int? originalPrice;
  final int? discountedPrice;
  final String? discountType;
  final dynamic fixedValue;
  final dynamic percentOf;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        originalPrice:
            json["original_price"] == null ? null : json["original_price"],
        discountedPrice:
            json["discounted_price"] == null ? null : json["discounted_price"],
        discountType:
            json["discount_type"] == null ? null : json["discount_type"],
        fixedValue: json["fixed_value"],
        percentOf: json["percent_of"],
      );
}

class StockItem {
  StockItem({
    this.quantity,
  });

  final int? quantity;

  factory StockItem.fromJson(Map<String, dynamic> json) => StockItem(
        quantity: json["quantity"] == null ? null : json["quantity"],
      );

  Map<String, dynamic> toJson() => {
        "quantity": quantity == null ? null : quantity,
      };
}
