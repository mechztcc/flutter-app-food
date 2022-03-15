import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final Icon? icon;
  final String label;
  final IconButton? suffix;

  const LoginInput({Key? key, this.icon, required this.label, this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
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
