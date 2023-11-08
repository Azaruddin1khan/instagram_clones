//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/get_started_screen.dart';
import 'package:instgram_clon/room.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        SharedPreferences.getInstance().then((value) {
          if (value.getString('token') == null ||
              value.getString('token')!.isEmpty) {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
              builder: (context) {
                return const Getstartedscreen();
              },
            ), (p) => false);
          } else {
            Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
              builder: (context) {
                return const RoomScreens();
              },
            ), (route) => false);
          }
        });
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ins.png',
              height: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/instagram_logo.png',
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
