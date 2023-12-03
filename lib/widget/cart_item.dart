import 'package:demo_alor_feri/controller/cart_controller.dart';
import 'package:demo_alor_feri/model/note_model.dart';
import 'package:demo_alor_feri/pages/home.dart';
import 'package:demo_alor_feri/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../value/const_image.dart';
import '../value/const_string.dart';

class CartItem extends StatelessWidget {
  CartItem({
    super.key,
    required this.id,
    required this.name,
    required this.url,
    required this.price,
    required this.stock,
  });

  String id;
  String name;
  String url;
  int price;
  int stock;

  CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                  child: url.isNotEmpty
                      ? Image.network(
                          "${ConstString.serverUrl}$url",
                          fit: BoxFit.cover,
                        )
                      : Image.asset(ConstImage.blank)),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 6,
                    ),
                    Text("Name: $name"),
                    const SizedBox(
                      height: 6,
                    ),
                    Text("Priice: $price \৳"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
