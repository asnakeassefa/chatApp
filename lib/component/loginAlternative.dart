import "package:flutter/material.dart";

class LoginAlternatives extends StatelessWidget {
  const LoginAlternatives({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.facebook,color: Colors.blue,size: 35,),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.apple,size: 35,),
        ),
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.email,color:Colors.red,size: 35,),
        )
      ],
    );
  }
}
