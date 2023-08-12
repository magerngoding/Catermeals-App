// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cater_meals/core.dart';

import '../controller/product_detail_vegetarian_buyer2_controller.dart';

class ProductDetailVegetarianBuyer2View extends StatefulWidget {
  final Map? item;
  const ProductDetailVegetarianBuyer2View({
    Key? key,
    this.item,
  }) : super(key: key);

  Widget build(context, ProductDetailVegetarianBuyer2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetailVegetarianBuyer2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [
              //  Text(
              //                       item['product_name'],
              //                       maxLines: 1,
              //                       overflow: TextOverflow.ellipsis,
              //                       style: blackTextStyle.copyWith(
              //                         fontSize: 18,
              //                         fontWeight: semiBold,
              //                       ),
              //                     ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetailVegetarianBuyer2View> createState() =>
      ProductDetailVegetarianBuyer2Controller();
}
