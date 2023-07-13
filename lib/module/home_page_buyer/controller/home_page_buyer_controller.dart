import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/home_page_buyer_view.dart';

class HomePageBuyerController extends State<HomePageBuyerView> {
  static late HomePageBuyerController instance;
  late HomePageBuyerView view;

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
