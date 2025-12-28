import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/models/product_model.dart';

class ShowDetails extends StatelessWidget {
  ShowDetails({super.key});
  static String id = "/show details";
  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Image.network(productModel.image, fit: BoxFit.contain),
              Text(
                productModel.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(productModel.description),
            ],
          ),
        ),
      ),
    );
  }
}
