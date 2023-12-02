import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.index,
      required this.color,
      required this.text});

  final int index;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        child: Container(
          decoration: BoxDecoration(
            color: color.withAlpha(90),
            borderRadius: const BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.all(10),
          height: 50,
          width: 150,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person, color: color.withAlpha(255), size: 32),
                Text(
                  text,
                  style: TextStyle(fontSize: 18, color: color.withAlpha(255)),
                )
              ],
            ),
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
