import 'package:flutter/material.dart';
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
        shape: const CircleBorder(),
        onPressed: () {},
        elevation: 5,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5.0,
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
              padding: const EdgeInsets.only(right: 25),
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
              padding: const EdgeInsets.only(left: 25),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => debugPrint("Music"),
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
                onTap: () => debugPrint("Profile"),
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
