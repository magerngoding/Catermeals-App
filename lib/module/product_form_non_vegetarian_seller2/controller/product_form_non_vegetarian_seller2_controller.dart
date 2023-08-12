import 'package:flutter/material.dart';
import 'package:cater_meals/state_util.dart';
import '../../../service/product_non_vegetarian_service/product_non_vegetarian_service.dart';
import '../../../shared/util/show_loading/show_loading.dart';
import '../view/product_form_non_vegetarian_seller2_view.dart';

class ProductFormNonVegetarianSeller2Controller
    extends State<ProductFormNonVegetarianSeller2View> {
  static late ProductFormNonVegetarianSeller2Controller instance;
  late ProductFormNonVegetarianSeller2View view;

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
      await ProductNonVegetarianService().update(
        id: id!,
        photo: photo!,
        productName: productName!,
        price: price!,
        category: category!,
        description: description!,
      );
    } else {
      await ProductNonVegetarianService().create(
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
