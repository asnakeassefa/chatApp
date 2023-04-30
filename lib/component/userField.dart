import "package:flutter/material.dart";

class UserFormField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscure;
  final String lableText;
  const UserFormField({super.key,this.controller, required this.hintText, required this.obscure,required this.lableText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: const InputDecoration(
          // labelText: lableText,
          // hintText:hintText,
          enabledBorder: OutlineInputBorder(
             borderRadius:BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(color: Colors.black38)
          ),
          focusedBorder:OutlineInputBorder(
            borderRadius:BorderRadius.all(Radius.circular(25)),
            borderSide: BorderSide(color: Colors.black54)
          )
        ),
      ),
    );
  }
}