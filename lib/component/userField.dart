import "package:flutter/material.dart";

class UserFormField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscure;
  final String lableText;
  final function;
  const UserFormField({super.key,required this.controller, required this.hintText, required this.obscure,required this.lableText, required this.function});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      validator: (String? value){
        if (value == null || value.isEmpty){
          return 'please enter valid input';
        }
        if (hintText == "email" && !value.contains("@")){
          return "please enter valid input";
        }
        return null;
      },
      onSaved: function,
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