import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  final controller;
  const Searching({super.key, required this.controller});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5),
      height: 45,
      child: Center(
        child: TextField(
          controller: widget.controller,
          decoration: InputDecoration(
              // labelText: lableText,
              prefixIcon: const Icon(Icons.search),
              // hintText: "Search",
              hintText: "search",
              contentPadding: const EdgeInsets.fromLTRB(0, 2, 15, 0),
              enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Theme.of(context).colorScheme.primary))),
        ),
      ),
    );
  }
}
