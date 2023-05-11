// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/item_dismissible/item_dismissible.dart';

class ProductListPageView extends StatefulWidget {
  const ProductListPageView({
    Key? key,
  }) : super(key: key);

  Widget build(context, ProductListPageController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text("ProductListPage"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: 6.0,
                horizontal: 12.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        initialValue: null,
                        decoration: InputDecoration.collapsed(
                          filled: true,
                          fillColor: Colors.transparent,
                          hintText: "Find your food here...",
                          hintStyle: TextStyle(
                            color: greenEmerland,
                          ),
                          hoverColor: Colors.transparent,
                        ),
                        onFieldSubmitted: (value) =>
                            controller.updateSearch(value),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: greenEmerland,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("products")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) return const Text("Error");
                  if (snapshot.data == null) return Container();
                  if (snapshot.data!.docs.isEmpty) {
                    return const Text("No Data");
                  }
                  final data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.docs.length,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      Map<String, dynamic> item =
                          (data.docs[index].data() as Map<String, dynamic>);
                      item["id"] = data.docs[index].id;

                      if (controller.search.isNotEmpty) {
                        var search = controller.search.toLowerCase();
                        var productName =
                            item['product_name'].toString().toLowerCase();
                        if (!productName.contains(search)) {
                          return Container();
                        }
                      }
                      return ItemDismissible(
                        onConfirm: () => controller.doDelete(item['id']),
                        child: Card(
                          child: ListTile(
                            onTap: () async {
                              await Get.to(
                                ProductFormPageView(
                                  item: item,
                                ),
                              );
                            },
                            leading: Container(
                              height: 60.0,
                              width: 60,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    item['photo'],
                                  ),
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                            ),
                            title: Text(item['product_name']),
                            subtitle: Text("${item['price']}"),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const ProductFormPageView());
        },
      ),
    );
  }

  @override
  State<ProductListPageView> createState() => ProductListPageController();
}
