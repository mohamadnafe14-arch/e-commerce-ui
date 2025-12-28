

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_card.dart';

class HomeSuccessBody extends StatelessWidget {
  const HomeSuccessBody({super.key, required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      clipBehavior: Clip.none,
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 60.h,
        crossAxisSpacing: 16.w,
        childAspectRatio: 1.1,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) =>
          CustomCard(productModel: products[index]),
    );
  }
}