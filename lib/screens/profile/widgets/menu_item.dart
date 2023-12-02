import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_magic/config/constants.dart';

class MenuListItem extends StatelessWidget {
  const MenuListItem(
      {super.key, required this.text, this.icon, this.onPressed});

  final String text;
  final IconData? icon;
  //final Function? onPressed;
  //final GestureTapCallback? onPressed;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      //leading: Icon(CupertinoIcons.home),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2.5),
      leading: Container(
        padding: const EdgeInsets.all(12.5),
        decoration: const BoxDecoration(
          color: Color(pinkPrimaryColor),
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: Icon(icon),
      ),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(CupertinoIcons.chevron_right),
      onTap: onPressed,
    );
  }
}
