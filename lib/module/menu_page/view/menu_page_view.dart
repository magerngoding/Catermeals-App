import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

import '../../../model/dummy_data.dart';

class MenuPageView extends StatefulWidget {
  const MenuPageView({Key? key}) : super(key: key);

  Widget build(context, MenuPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.all(20),
          itemCount: allMenu.length,
          itemBuilder: (context, index) {
            return MenuItemView(menu: allMenu[index]);
          },
        ),
      ),
    );
  }

  @override
  State<MenuPageView> createState() => MenuPageController();
}
