import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:instgram_clon/login_screen.dart';
import 'package:instgram_clon/login_with_mobile.dart';
import 'package:instgram_clon/sign_up.dart';

import 'login_with_mobileapi.dart';

class Getstartedscreen extends StatefulWidget {
  const Getstartedscreen({super.key});

  @override
  State<Getstartedscreen> createState() => _GetstartedscreenState();
}

class _GetstartedscreenState extends State<Getstartedscreen> {
  GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ],
      clientId:
          '742650841640-j0pp2f2djndl9svf9r1fuo0f8s2fmvld.apps.googleusercontent.com',
      signInOption: SignInOption.standard);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            'assets/instagram_logo.png',
            height: 100,
          ),
          const SizedBox(
            height: 52,
          ),
          Container(
            height: 85,
            width: 85,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1692610492938-37a4eed63ac0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'))),
          ),
          const SizedBox(
            height: 13,
          ),
          const Text(
            'jacob_w',
            style: TextStyle(
              fontFamily: 'SFProText',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginWithMobileApiScreen()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff3797EF),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  'Log in with OTP',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 30 / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Loginscreen()));
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff3797EF),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  'Log in with email passward',
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 30 / 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: InkWell(
              onTap: () {
                _handleSignIn();
              },
              child: Container(
                height: 44,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff3797EF),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                  child: Text(
                    'Google Sign-in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Switch accounts',
                    style: TextStyle(
                        color: Color(0xff3797EF), fontWeight: FontWeight.w700),
                  ))),
          const Spacer(),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(children: [
              Divider(color: Colors.black.withOpacity(0.4), thickness: 0.5),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do Not have an account?',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.4)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    ));
  }

  Future<void> _handleSignIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = kIsWeb
          ? await (_googleSignIn.signInSilently())
          : await (_googleSignIn.signIn());

      if (kIsWeb && googleSignInAccount == null)
        googleSignInAccount = await (_googleSignIn.signIn());
    } catch (error) {
      print(error);
    }
  }
}
