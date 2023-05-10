import 'package:cloud_firestore/cloud_firestore.dart';

class ProductService {
  create({
    required String photo,
    required String productName,
    required double price,
    required String category,
    required String description,
  }) async {
    await FirebaseFirestore.instance.collection("products").add(
      {
        "photo": photo,
        "product_name": productName,
        "price": price,
        "category": category,
        "description": description,
      },
    );
  }
}
