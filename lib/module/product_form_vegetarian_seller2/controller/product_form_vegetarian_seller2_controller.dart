import 'package:flutter/material.dart';
import 'package:cater_meals/core.dart';

class ProductFormVegetarianSeller2Controller
    extends State<ProductFormVegetarianSeller2View> {
  static late ProductFormVegetarianSeller2Controller instance;
  late ProductFormVegetarianSeller2View view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      id = widget.item!['id'];
      photo = widget.item!['photo'];
      productName = widget.item!['product_name'];
      price = widget.item!['price'];
      category = widget.item!['category'];
      description = widget.item!['description'];
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  bool get isEditMode => widget.item != null;

  String? id;
  String? photo;
  String? productName;
  double? price;
  String? category;
  String? description;

  doSave() async {
    showLoading();
    if (isEditMode) {
      await ProductVegetarianService().update(
        id: id!,
        photo: photo!,
        productName: productName!,
        price: price!,
        category: category!,
        description: description!,
      );
    } else {
      await ProductVegetarianService().create(
        photo: photo!,
        productName: productName!,
        price: price!,
        category: category!,
        description: description!,
      );
    }
    hideLoading();
    Get.back();
  }
}
