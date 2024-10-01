import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.search,
          size: 30,
          color: Colors.grey,
        ),
        SizedBox(width: 10),
        SearchBar(
          constraints: BoxConstraints(minHeight: 40, maxWidth: 350),
          overlayColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(Colors.white),
          surfaceTintColor: MaterialStatePropertyAll(Colors.grey),
        ),
      ],
    );
  }
}
