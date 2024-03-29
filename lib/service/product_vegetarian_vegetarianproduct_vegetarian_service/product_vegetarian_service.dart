import 'package:cloud_firestore/cloud_firestore.dart';

class ProductVegetarianService {
  create({
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("vegetarian").add({
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
    await FirebaseFirestore.instance.collection("vegetarian").doc(id).update({
      "photo": photo,
      "product_name": productName,
      "price": price,
      "category": category,
      "description": description,
    });
  }

  delete(String id) async {
    await FirebaseFirestore.instance.collection("vegetarian").doc(id).delete();
  }
}
