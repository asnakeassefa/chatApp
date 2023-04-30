import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final todo;
  final String child;
  const Button({super.key, required this.todo,required this.child});
 
  @override
  Widget build(BuildContext context) {
     double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 20, 20),
      child: ElevatedButton(
        onPressed: todo,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          minimumSize: MaterialStatePropertyAll(
            Size(screenWidth, 50),
          ),
        ),
        child: Text(child),
      ),
    );
  }
}
