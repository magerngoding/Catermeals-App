import 'package:flutter/material.dart';
import 'package:cater_meals/state_util.dart';
import '../view/product_list_non_vegetarian_buyer2_view.dart';

class ProductListNonVegetarianBuyer2Controller
    extends State<ProductListNonVegetarianBuyer2View> {
  static late ProductListNonVegetarianBuyer2Controller instance;
  late ProductListNonVegetarianBuyer2View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
