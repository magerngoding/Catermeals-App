import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class VegetarianPageController extends State<VegetarianPageView>
    implements MvcController {
  static late VegetarianPageController instance;
  late VegetarianPageView view;

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

  doDelete(String id) async {
    await ProductVegetarianService().delete(id);
  }
}
