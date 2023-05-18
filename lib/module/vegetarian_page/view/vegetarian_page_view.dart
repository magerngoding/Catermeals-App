import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/vegetarian_page_controller.dart';

class VegetarianPageView extends StatefulWidget {
  const VegetarianPageView({Key? key}) : super(key: key);

  Widget build(context, VegetarianPageController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vegetarian"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<VegetarianPageView> createState() => VegetarianPageController();
}
