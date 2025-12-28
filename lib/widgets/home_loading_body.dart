import 'package:flutter/material.dart';

class HomeLoadingBody extends StatelessWidget {
  const HomeLoadingBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator());
  }
}