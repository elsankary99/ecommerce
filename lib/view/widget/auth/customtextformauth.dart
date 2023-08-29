import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?) validator;
  final bool isNumber;
  final bool obscureText;
  final void Function()? onTapIcon;
  const CustomTextFormAuth({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.validator,
    this.isNumber = false,
    this.obscureText = true,
    this.onTapIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(labelText)),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 13),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(icon),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
