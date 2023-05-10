import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service.dart/product_service.dart';

class ProductFormPageController extends State<ProductFormPageView>
    implements MvcController {
  static late ProductFormPageController instance;
  late ProductFormPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? id;
  String? photo;
  String? productName;
  double? price;
  String? category;
  String? description;

  doSave() async {
    showLoading();
    await ProductService().create(
      photo: photo!,
      productName: productName!,
      price: price!,
      category: category!,
      description: description!,
    );
    hideLoading();
    Get.back();
  }
}
