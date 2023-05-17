import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final controller;
  const SearchBar({super.key, required this.controller});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: TextField(
        controller: widget.controller,
        decoration: InputDecoration(
            // labelText: lableText,
            hintText: "Search",
            enabledBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary)),
            focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                borderSide:
                    BorderSide(color: Theme.of(context).colorScheme.primary))),
      ),
    );
  }
}
