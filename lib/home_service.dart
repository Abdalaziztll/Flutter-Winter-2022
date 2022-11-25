import 'dart:convert';

import 'package:baby_sita/home_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<dynamic> SendOrder(String product_id) async {
  Item _item = Item(
      product_id: product_id,
      product_color_id: "3",
      product_size_id: "3",
      quantity: "1");
  Order _order = Order(address_id: "1", items: [_item]);

  var response = await http.get(
      Uri.http('https://eva.webmyidea.com/api/v1', '/orders'),
      headers: _order.toMap());
  dynamic _response = response.body.runtimeType;

  return _response;
}
//بالواجهة بستدعي التابع 