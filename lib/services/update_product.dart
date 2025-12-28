import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String description,
    required String image,
    required num price,
    required String category,
    required String id,
  }) async {
    Map<String, dynamic> json = await Api().put(
      url: "https://fakestoreapi.com/products/$id",
      body: {
        "title": title,
        "price": price.toDouble(),
        "description": description,
        "image": image,
        "category": category,
      },
    );
    return ProductModel.fromJson(json);
  }
}
