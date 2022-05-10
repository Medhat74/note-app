import 'package:flutter/material.dart';
class CustomTextFiled extends StatelessWidget {
  TextEditingController controller;

  CustomTextFiled({Key? key,required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty)
          return "please fill the filed";
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color:Colors.teal),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}