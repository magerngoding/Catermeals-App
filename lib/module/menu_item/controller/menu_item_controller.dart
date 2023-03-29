import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/menu_item_view.dart';

class MenuItemController extends State<MenuItemView> implements MvcController {
  static late MenuItemController instance;
  late MenuItemView view;

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
