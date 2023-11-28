import 'package:flutter/material.dart';
import 'package:sleep_magic/config/constants.dart';
import 'package:sleep_magic/screens/home/home_screen.dart';

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
        onPressed: () {},
        elevation: 5,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (value) => debugPrint(value.toString()),
        indicatorShape: null,
        indicatorColor: const Color(tealPrimaryColor),
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.star_half_rounded),
            label: "Sleep",
          ),
          NavigationDestination(
            icon: Icon(Icons.play_circle),
            label: "Music",
          ),
          NavigationDestination(
            icon: Icon(Icons.person_sharp),
            label: "Profile",
          ),
        ],
      ),
      body: const HomeScreen(title: "Sleep Magic"),
    );
  }
}
