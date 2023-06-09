import 'package:flutter/material.dart';

class cards extends StatelessWidget {
  final  String child;
  final Color color;
  const cards({super.key,required this.color,required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:450,
          color: color,
          child: Image.asset(child)
        ),
      ),
    );
  }
}
