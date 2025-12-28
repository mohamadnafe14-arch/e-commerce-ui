import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubits/home_cubit/home_states.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_products.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit(this.getAllProducts) : super(HomeInitail());
  GetAllProducts getAllProducts;
  List<ProductModel> productModels = [];
  void getProducts() async {
    try {
      emit(HomeLoading());
      productModels = await getAllProducts.getAllProducts();
      emit(HomeSuccess());
    } catch (e) {
      emit(HomeFail(message: e.toString()));
    }
  }
}
