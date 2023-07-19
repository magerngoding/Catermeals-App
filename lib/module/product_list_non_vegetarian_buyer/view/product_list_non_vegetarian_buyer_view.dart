import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:get/get.dart';

class ProductListNonVegetarianBuyerView extends StatelessWidget {
  const ProductListNonVegetarianBuyerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductListNonVegetarianBuyerController>(
      init: ProductListNonVegetarianBuyerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Non Vegetarian"),
            actions: const [],
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection("non_vegetarian")
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

                          return Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: greenFadedolor,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      item['product_name'],
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: blackTextStyle.copyWith(
                                        fontSize: 18,
                                        fontWeight: semiBold,
                                      ),
                                    ),
                                    Container(
                                      height: 80.0,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            item['photo'],
                                          ),
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(
                                            20.0,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  item['description'],
                                  style: blackTextStyle,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.fastfood,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      item['category'],
                                      style: greenEmerlandTextStyle,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${item['price']}",
                                  style: blackTextStyle.copyWith(
                                    fontWeight: bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
