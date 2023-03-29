import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../model/dummy_data.dart';

class MenuItemView extends StatefulWidget {
  final Menu menu;

  const MenuItemView({
    super.key,
    required this.menu,
  });

  Widget build(context, MenuItemController controller) {
    controller.view = this;

    return Container(
      width: 250,
      height: 320,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              menu.img,
              width: 150,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            menu.name,
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Rp. ${menu.price}',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            textAlign: TextAlign.center,
            menu.desc,
            style: greenEmerlandTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<MenuItemView> createState() => MenuItemController();
}
