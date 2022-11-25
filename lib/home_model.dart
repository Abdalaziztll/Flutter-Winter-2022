// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class Item {
  String product_id;
  String product_color_id;
  String product_size_id;
  String quantity;
  Item({
    required this.product_id,
    required this.product_color_id,
    required this.product_size_id,
    required this.quantity,
  });

  Item copyWith({
    String? product_id,
    String? product_color_id,
    String? product_size_id,
    String? quantity,
  }) {
    return Item(
      product_id: product_id ?? this.product_id,
      product_color_id: product_color_id ?? this.product_color_id,
      product_size_id: product_size_id ?? this.product_size_id,
      quantity: quantity ?? this.quantity,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product_id': product_id,
      'product_color_id': product_color_id,
      'product_size_id': product_size_id,
      'quantity': quantity,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      product_id: map['product_id'] as String,
      product_color_id: map['product_color_id'] as String,
      product_size_id: map['product_size_id'] as String,
      quantity: map['quantity'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Item(product_id: $product_id, product_color_id: $product_color_id, product_size_id: $product_size_id, quantity: $quantity)';
  }

  @override
  bool operator ==(covariant Item other) {
    if (identical(this, other)) return true;

    return other.product_id == product_id &&
        other.product_color_id == product_color_id &&
        other.product_size_id == product_size_id &&
        other.quantity == quantity;
  }

  @override
  int get hashCode {
    return product_id.hashCode ^
        product_color_id.hashCode ^
        product_size_id.hashCode ^
        quantity.hashCode;
  }
}

class Order {
  String address_id;
  List<Item> items;
  Order({
    required this.address_id,
    required this.items,
  });

  Order copyWith({
    String? address_id,
    List<Item>? items,
  }) {
    return Order(
      address_id: address_id ?? this.address_id,
      items: items ?? this.items,
    );
  }

  Map<String, String> toMap() {
    return <String, String>{
      'address_id': address_id,
      'items': items.map((x) => x.toMap()).toList().toString(),
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      address_id: map['address_id'] as String,
      items: List<Item>.from(
        (map['items'] as List<int>).map<Item>(
          (x) => Item.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Order.fromJson(String source) =>
      Order.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Order(address_id: $address_id, items: $items)';

  @override
  bool operator ==(covariant Order other) {
    if (identical(this, other)) return true;

    return other.address_id == address_id && listEquals(other.items, items);
  }

  @override
  int get hashCode => address_id.hashCode ^ items.hashCode;
}
