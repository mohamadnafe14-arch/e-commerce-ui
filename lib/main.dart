import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/cubits/home_cubit/home_cubit.dart';
import 'package:store_app/screens/home.dart';
import 'package:store_app/screens/show_details.dart';
import 'package:store_app/services/get_all_products.dart';
import 'package:store_app/services/update_product.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(GetAllProducts()),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'First Method',
            home: child,
            routes: {
              Home.id: (context) => Home(),
              ShowDetails.id: (context) => ShowDetails(),
            },
          );
        },
        child: const Home(),
      ),
    );
  }
}
