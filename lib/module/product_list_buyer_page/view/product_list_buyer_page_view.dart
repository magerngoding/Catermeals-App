import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/product_list_buyer_page_controller.dart';

class ProductListBuyerPageView extends StatefulWidget {
  const ProductListBuyerPageView({Key? key}) : super(key: key);

  Widget build(context, ProductListBuyerPageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductListBuyerPage"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductListBuyerPageView> createState() =>
      ProductListBuyerPageController();
}
