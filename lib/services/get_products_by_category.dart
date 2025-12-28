import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
class GetProductsByCategory {
  Future<List<ProductModel>> getAllProducts({
    required String categoryName,
  }) async {
      List<dynamic> json =await Api().get(url: "https://fakestoreapi.com/products/category/$categoryName");
      List<ProductModel> result = [];
      json.forEach((jsonData) => result.add(ProductModel.fromJson(jsonData)));
      return result;
    }
}