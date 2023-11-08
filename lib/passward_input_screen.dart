import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/room.dart';
import 'package:instgram_clon/name_input_screen.dart';

class PasswordInputScreen extends StatefulWidget {
  const PasswordInputScreen({super.key});

  @override
  State<PasswordInputScreen> createState() => _PasswordInputScreenState();
}

class _PasswordInputScreenState extends State<PasswordInputScreen> {
  bool? isLoading;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    print(userValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'Create password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 50),
            child: Text(
              'Create a password with at leasr 6 letters of numbers. It should be something that others can\'t guess.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              controller: passwordController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter your password Here',
                  fillColor: const Color(0xffF2F2F2),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1)))),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              controller: confirmPasswordController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              obscureText: true,
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter Confirm password ',
                  fillColor: const Color(0xffF2F2F2),
                  contentPadding: const EdgeInsets.only(left: 10, right: 10),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1))),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.black.withOpacity(0.1)))),
            ),
          ),
          const SizedBox(height: 30),
          InkWell(
            onTap: () async {
              if (passwordController.text.length > 7 &&
                  (passwordController.text == confirmPasswordController.text)) {
                AuthCredential userCredential = EmailAuthProvider.credential(
                    email: userValue['email'],
                    password: passwordController.text);
                FirebaseAuth.instance.currentUser
                    ?.linkWithCredential(userCredential)
                    .then((value) {
                  setState(() {
                    isLoading = true;
                  });
                  FirebaseAuth.instance.currentUser
                      ?.sendEmailVerification()
                      .then((value) {
                    Timer timer = Timer.periodic(Duration(seconds: 2), (timer) {
                      FirebaseAuth.instance.currentUser?.reload();
                      if (FirebaseAuth.instance.currentUser?.emailVerified ??
                          false) {
                        timer.cancel();

                        FirebaseAuth.instance.currentUser
                            ?.updateDisplayName(userValue['name']);
                        FirebaseFirestore.instance
                            .collection('users')
                            .doc(FirebaseAuth.instance.currentUser!.phoneNumber!
                                .split('+91')
                                .last)
                            .set(userValue)
                            .then((value) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                            builder: (context) {
                              return const RoomScreens();
                            },
                          ), (p) => false);
                        }).onError((error, stackTrace) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(error.toString())));
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                            builder: (context) {
                              return const RoomScreens();
                            },
                          ), (p) => false);
                        });
                      }
                    });
                  }).onError((error, stackTrace) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error.toString())));
                  });
                }).onError((error, stackTrace) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(error.toString())));
                });
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: passwordController.text.length > 7 &&
                          (passwordController.text ==
                              confirmPasswordController.text)
                      ? const Color(0xff3797EF)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                isLoading == null
                    ? 'Submit'
                    : isLoading!
                        ? 'Verifing....'
                        : 'Verified',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
