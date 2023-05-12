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
        // labelText: lableText,
        // hintText:hintText,
        enabledBorder: OutlineInputBorder(
           borderRadius:const BorderRadius.all(Radius.circular(15)),
           borderSide: BorderSide(color: Theme.of(context).colorScheme.primary)
        ),
        focusedBorder:OutlineInputBorder(
          borderRadius:const BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color:Theme.of(context).colorScheme.primary)
        )
      ),
    );
  }
}