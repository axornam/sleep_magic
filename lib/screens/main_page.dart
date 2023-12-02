import 'package:flutter/material.dart';
import 'package:sleep_magic/screens/home/home_screen.dart';
import 'package:sleep_magic/screens/player/player_screen.dart';
import 'package:sleep_magic/screens/profile/profile_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: InkWell(
                onTap: () => debugPrint("Home"),
                borderRadius: BorderRadius.circular(50),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home),
                    Text("Home"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: () => debugPrint("Sleep"),
                borderRadius: BorderRadius.circular(50),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star_half_rounded),
                    Text("Sleep"),
                  ],
                ),
              ),
            ),
            Padding(
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
                    Icon(Icons.play_circle),
                    Text("Music"),
                  ],
                ),
              ),
            ),
            Padding(
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
                    Icon(Icons.person_sharp),
                    Text("Profile"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: const HomeScreen(title: "Sleep Magic"),
    );
  }
}
