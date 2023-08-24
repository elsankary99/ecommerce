import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextEditingController? controller;
  const CustomTextFormAuth(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.icon,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(labelText)),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14),
          suffixIcon: Icon(icon),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
