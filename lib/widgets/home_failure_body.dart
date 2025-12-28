import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFailureBody extends StatelessWidget {
  const HomeFailureBody({super.key, required this.messsage});
  final String messsage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Text(
          "The error happend because of $messsage",
          style: TextStyle(fontSize: 40.sp),
        ),
      ),
    );
  }
}
