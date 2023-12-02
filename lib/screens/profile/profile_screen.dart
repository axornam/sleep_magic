import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_magic/config/constants.dart';
import 'package:sleep_magic/screens/profile/widgets/menu_item.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: Column(
        children: [
          const Divider(thickness: 0.5),
          const SizedBox(height: 20),
          SizedBox(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, 10),
                        blurRadius: 25.0,
                      )
                    ],
                    border: Border.symmetric(
                      vertical: BorderSide(width: 1, color: Colors.black),
                      horizontal: BorderSide(width: 1, color: Colors.black),
                    ),
                    shape: BoxShape.circle,
                  ),
                  padding: const EdgeInsets.all(5),
                  height: 120,
                  width: 120,
                  child: Container(
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                        vertical: BorderSide(width: 1, color: Colors.black),
                        horizontal: BorderSide(width: 1, color: Colors.black),
                      ),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/cool_avatar_m.png'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Axornam Richard',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  'axornam.richard@gmail.com',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              children: <Widget>[
                MenuListItem(
                  text: 'Home',
                  icon: FluentIcons.home_12_regular,
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                MenuListItem(
                  icon: FluentIcons.group_20_regular,
                  text: 'Categories',
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                MenuListItem(
                  //leading: Icon(Icons.settings_outlined),
                  icon: (FluentIcons.settings_24_regular),
                  text: 'Settings',
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                MenuListItem(
                  //leading: Icon(Icons.privacy_tip_outlined),
                  icon: (CupertinoIcons.checkmark_shield),
                  text: ('Privacy Policy'),
                  onPressed: () {},
                ),
                const SizedBox(height: 10),
                MenuListItem(
                  icon: (CupertinoIcons.doc_text),
                  text: ('Terms & Conditions'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: TextButton(
              style: ButtonStyle(
                side: const MaterialStatePropertyAll(
                  BorderSide(
                    style: BorderStyle.none,
                  ),
                ),
                elevation: const MaterialStatePropertyAll(10.0),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(vertical: 20),
                ),
                shape: const MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    side: BorderSide(width: 0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
                foregroundColor: MaterialStatePropertyAll<Color>(
                  Theme.of(context).colorScheme.onBackground,
                ),
                backgroundColor: const MaterialStatePropertyAll<Color>(
                  Color(pinkPrimaryColor),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.logout),
                  const SizedBox(width: 10),
                  Text(
                    'Sign Out',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
