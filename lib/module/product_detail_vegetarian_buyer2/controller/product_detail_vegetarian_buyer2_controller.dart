import 'package:flutter/material.dart';
import '../view/product_detail_vegetarian_buyer2_view.dart';

class ProductDetailVegetarianBuyer2Controller
    extends State<ProductDetailVegetarianBuyer2View> {
  static late ProductDetailVegetarianBuyer2Controller instance;
  late ProductDetailVegetarianBuyer2View view;
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
}
