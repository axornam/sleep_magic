import 'package:flutter/material.dart';
import 'package:sleep_magic/config/constants.dart';
import 'package:sleep_magic/screens/home/home_screen.dart';
import 'package:sleep_magic/screens/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Image(
            image: AssetImage('assets/images/sleep_emoji.png'),
          ),
          const Stack(
            alignment: Alignment.centerLeft,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "&",
                  style: TextStyle(
                    fontSize: 110,
                    color: Colors.white,
                    shadows: <Shadow>[
                      Shadow(
                        color: Colors.black45,
                        offset: Offset(0, 0),
                        blurRadius: 1,
                      )
                    ],
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      "Sleep Better",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Wake Happier",
                      style: TextStyle(
                        fontSize: 45,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        shadows: <Shadow>[
                          Shadow(
                            color: Colors.orangeAccent,
                            offset: Offset(3, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                "Have a relaxed and focused day",
                style: TextStyle(
                  fontSize: 18,
                  height: 1,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 45)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                ),
                //side: MaterialStatePropertyAll<BorderSide>(BorderSide()),
                padding: MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 60.0, vertical: 20),
                ),
                iconSize: MaterialStatePropertyAll<double>(20),
                foregroundColor: MaterialStatePropertyAll<Color>(
                  Colors.white,
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color(tealPrimaryColor),
                ),
                alignment: Alignment.center,
              ),
              onPressed: () => _goToHomeScreen(),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: !_isLoading == true
                        ? const Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox(
                            width: 25,
                            height: 25,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _goToHomeScreen() async {
    // set timeout for 3 secs
    // transition to home screen
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    setState(() => _isLoading = false);

    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }
}
