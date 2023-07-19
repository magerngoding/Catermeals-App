import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/non_vegetarian_page_view.dart';

class NonVegetarianPageController extends State<NonVegetarianPageView>
    implements MvcController {
  static late NonVegetarianPageController instance;
  late NonVegetarianPageView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  String search = "";
  updateSearch(String query) {
    search = query;
    setState(() {});
  }
}
