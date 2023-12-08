import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/home/home_screen.dart';
import 'package:sleep_magic/screens/player/player_screen.dart';
import 'package:sleep_magic/screens/profile/profile_screen.dart';
import 'package:sleep_magic/screens/sleep/sleep_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String _screenId = "home";
  final Map<String, Map> _screens = {
    "home": {
      "screen_id": "home",
      "component": const HomeScreen(title: "Sleep Magic"),
    },
    "sleep": {
      "screen_id": "sleep",
      "component": const SleepScreen(),
    }
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {},
        elevation: 2.0,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        height: 70.0,
        notchMargin: 5.0,
        elevation: 3.0,
        shape: const CircularNotchedRectangle(),
        //onPressed: (value) => debugPrint(value.toString()),
        //indicatorColor: const Color(tealPrimaryColor),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 5),
              decoration:
                  _screenId == 'home' ? _buildTabIndicator('home') : null,
              child: InkWell(
                onTap: () {
                  debugPrint("Home");
                  _changeScreen("home");
                },
                borderRadius: BorderRadius.circular(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      FluentIcons.home_12_regular,
                      color: _screenId == "home" ? Colors.blue : null,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: _screenId == "home" ? Colors.blue : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 30),
              decoration:
                  _screenId == 'sleep' ? _buildTabIndicator('sleep') : null,
              child: InkWell(
                onTap: () {
                  debugPrint("Sleep");
                  _changeScreen("sleep");
                },
                borderRadius: BorderRadius.circular(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      CupertinoIcons.moon,
                      color: _screenId == "sleep" ? Colors.blue : null,
                    ),
                    Text(
                      "Sleep",
                      style: TextStyle(
                        color: _screenId == "sleep" ? Colors.blue : null,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 30),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {
                  debugPrint("Music");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const PlayerScreen(),
                    ),
                  );
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(CupertinoIcons.play_circle),
                    Text("Music"),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 5),
              child: InkWell(
                onTap: () {
                  debugPrint("Profile");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ),
                  );
                },
                borderRadius: BorderRadius.circular(50),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(CupertinoIcons.person),
                    Text("Profile"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: _screens[_screenId]!["component"],
    );
  }

  _buildTabIndicator(String id) {
    final EdgeInsets insets = id == 'sleep'
        ? const EdgeInsets.only(bottom: 52.5, left: 0, right: 30)
        : const EdgeInsets.only(bottom: 52.5, left: 5);

    return UnderlineTabIndicator(
      borderSide: const BorderSide(color: Colors.blue, width: 3),
      insets: insets,
    );
  }

  _changeScreen(String screenId) async {
    await Future.delayed(const Duration(milliseconds: 300));
    // change screens logic
    setState(() {
      _screenId = screenId;
    });
  }
}
