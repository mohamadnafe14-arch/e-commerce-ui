import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    required this.hintText,
    required this.onChanged,
    required this.validator,
    this.encrypted = false,
    this.textInputType = TextInputType.text,
  });
  final String hintText;
  Function(String?)? onChanged;
  String? Function(String?)? validator;
  bool? encrypted;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        obscureText: encrypted!,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hint: Text(hintText),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
