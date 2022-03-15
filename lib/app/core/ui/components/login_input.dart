import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final Icon? icon;
  final String label;
  final IconButton? suffix;
  final TextEditingController controller;
  final dynamic validator;

  const LoginInput(
      {Key? key,
      this.icon,
      required this.label,
      this.suffix,
      required this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: icon == null ? Icon(Icons.person) : icon,
          suffixIcon: suffix != null ? suffix : Icon(Icons.abc),
        ),
      ),
    );
  }
}
