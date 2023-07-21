import 'package:cloud_firestore/cloud_firestore.dart';

class ProductNonVegetarianService {
  create({
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("non_vegetarian").add({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "category": category,
      "description": description,
    });
  }

  update({
    required String id,
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance
        .collection("non_vegetarian")
        .doc(id)
        .update({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "category": category,
      "description": description,
    });
  }

  delete(String id) async {
    await FirebaseFirestore.instance
        .collection("non_vegetarian")
        .doc(id)
        .delete();
  }
}
