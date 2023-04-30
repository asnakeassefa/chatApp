import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final todo;
  final String child;
  const Button({super.key, required this.todo,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      alignment: const Alignment(0, 0.9),
      child: ElevatedButton(
        onPressed: todo,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          minimumSize: const MaterialStatePropertyAll(
            Size(350, 50),
          ),
        ),
        child: Text(child),
      ),
    );
  }
}
