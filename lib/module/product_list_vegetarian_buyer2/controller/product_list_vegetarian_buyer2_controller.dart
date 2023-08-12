import 'package:flutter/material.dart';
import 'package:cater_meals/state_util.dart';
import '../view/product_list_vegetarian_buyer2_view.dart';

class ProductListVegetarianBuyer2Controller
    extends State<ProductListVegetarianBuyer2View> {
  static late ProductListVegetarianBuyer2Controller instance;
  late ProductListVegetarianBuyer2View view;

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
