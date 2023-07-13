import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../state_util.dart';

class HomePageController extends State<HomePageView> implements MvcController {
  @override
  static late HomePageController instance;
  late HomePageView view;

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
