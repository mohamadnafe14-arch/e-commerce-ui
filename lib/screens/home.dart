import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/cubits/home_cubit/home_cubit.dart';
import 'package:store_app/cubits/home_cubit/home_states.dart';
import 'package:store_app/widgets/home_failure_body.dart';
import 'package:store_app/widgets/home_loading_body.dart';
import 'package:store_app/widgets/home_success_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String id = "/Home";
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeCubit>(context).getProducts();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("New trend", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.cartPlus, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(top: 50, right: 20, left: 20),
        child: BlocBuilder<HomeCubit, HomeStates>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return HomeLoadingBody();
            } else if (state is HomeSuccess) {
              return HomeSuccessBody(
                products: BlocProvider.of<HomeCubit>(context).productModels,
              );
            } else if (state is HomeFail) {
              return HomeFailureBody(messsage: state.message);
            } else {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Hello into", style: TextStyle(fontSize: 40)),
                    Text('Our app', style: TextStyle(fontSize: 65)),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
