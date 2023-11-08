//import 'dart:async';
//import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:instagram_clone/user_register/name_input_screen.dart';
//import 'package:instagram_clone/user_register/password_input_screen.dart';
import 'package:instgram_clon/name_input_screen.dart';
import 'package:instgram_clon/passward_input_screen.dart';

class EmailInputScreen extends StatefulWidget {
  const EmailInputScreen({super.key});

  @override
  State<EmailInputScreen> createState() => _EmailInputScreenState();
}

class _EmailInputScreenState extends State<EmailInputScreen> {
  TextEditingController emailController = TextEditingController();
  bool isLoading = false;
  @override
  void initState() {
    print(userValue);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'What\'s your email address?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 50),
            child: Text(
              'Enter the email address at which you can be contacted. No one will see this on your profile',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              controller: emailController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter Email Here',
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
              if (RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(emailController.text)) {
                setState(() {
                  userValue['email'] = emailController.text;
                });

                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return PasswordInputScreen();
                  },
                ));
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color:
                      RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(emailController.text)
                          ? const Color(0xff3797EF)
                          : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                isLoading ? 'Verifing.....' : 'Verify',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
