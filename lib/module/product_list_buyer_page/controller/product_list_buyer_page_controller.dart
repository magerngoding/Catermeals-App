import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/product_list_buyer_page_view.dart';

class ProductListBuyerPageController extends State<ProductListBuyerPageView> {
  static late ProductListBuyerPageController instance;
  late ProductListBuyerPageView view;

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
