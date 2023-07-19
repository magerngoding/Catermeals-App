import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class ProductFormVegetarianView extends StatelessWidget {
  const ProductFormVegetarianView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductFormVegetarianController>(
      init: ProductFormVegetarianController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Product Form Vegetarian"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          QImagePicker(
                            label: "Photo",
                            validator: Validator.required,
                            value: controller.photo,
                            onChanged: (value) {
                              controller.photo = value;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          QTextField(
                            label: "Name  (Max 20 character!)",
                            validator: Validator.required,
                            value: controller.productName,
                            onChanged: (value) {
                              controller.productName = value;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          QNumberField(
                            label: "Price",
                            validator: Validator.required,
                            value: controller.price?.toString(),
                            onChanged: (value) {
                              controller.price = double.tryParse(value) ?? 0;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          QDropdownField(
                            label: "Category",
                            validator: Validator.required,
                            value: controller.category,
                            items: const [
                              {
                                "label": "Vegetarian",
                                "value": "Vegetarian",
                              },
                            ],
                            onChanged: (value, label) {
                              controller.category = value;
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          QMemoField(
                            label: "Description (Include contact person)",
                            validator: Validator.required,
                            value: controller.description,
                            onChanged: (value) {
                              controller.description = value;
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 72,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: greenEmerland,
              ),
              onPressed: () => controller.doSave(),
              child: const Text("Save"),
            ),
          ),
        );
      },
    );
  }
}
