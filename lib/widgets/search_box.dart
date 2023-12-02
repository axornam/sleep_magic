import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: SearchBar(
        hintText: 'Search for Sound or Video',
        hintStyle: MaterialStatePropertyAll(
          TextStyle(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        controller: controller,
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        leading: const Icon(CupertinoIcons.search),
        elevation: const MaterialStatePropertyAll(0.0),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            side: BorderSide(width: 0),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
