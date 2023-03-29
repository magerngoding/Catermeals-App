import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/menu_page_view.dart';

class MenuPageController extends State<MenuPageView> implements MvcController {
  static late MenuPageController instance;
  late MenuPageView view;

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