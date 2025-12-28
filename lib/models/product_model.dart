class ProductModel {
  final int id;
  final String title, category, image, description;
  final double price;
  final RatingModel ratingModel;
  ProductModel({
    required this.id,
    required this.category,
    required this.description,
    required this.image,
    required this.price,
    required this.ratingModel,
    required this.title,
  });
  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData["id"],
      category: jsonData["category"],
      description: jsonData["description"],
      image: jsonData["image"],
      price: (jsonData["price"] as num).toDouble(),
      ratingModel: RatingModel.fromJson(jsonData["rating"]),
      title: jsonData["title"],
    );
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({required this.count, required this.rate});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      count: jsonData["count"],
      rate: (jsonData["rate"] as num).toDouble(),
    );
  }
}
