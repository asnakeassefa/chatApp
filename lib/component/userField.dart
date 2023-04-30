import "package:flutter/material.dart";

class UserFormField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscure;
  final String lableText;
  const UserFormField({super.key,this.controller, required this.hintText, required this.obscure,required this.lableText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: lableText,
        hintText:hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38)
        ),
        focusedBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black54)
        )
      ),
    );
  }
}