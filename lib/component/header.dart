import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 40,0, 20),
            child: const Text(
              'Geting Closer To EveryOne',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w600,
                fontFamily: "poppins",
              ),
            ),
          ),
          const SizedBox(
            width:400,
            child: Text(
              "Help you to connect everyone with just easy way",
              style: TextStyle(
                fontSize: 17,
                fontFamily: "poppins",
              ),
            ),
          )
        ],
      ),
    );
  }
}
