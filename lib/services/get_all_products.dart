import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';
class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> json = await Api().get(
      url: "https://fakestoreapi.com/products",
    );
    List<ProductModel> result = [];
    json.forEach((jsonData) => result.add(ProductModel.fromJson(jsonData)));
    return result;
  }
}