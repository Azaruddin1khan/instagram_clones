// import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/room.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: const Icon(Icons.keyboard_arrow_left),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(),
          Image.asset(
            'assets/instagram_logo.png',
            height: 50,
          ),
          const SizedBox(
            height: 39,
          ),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (value) {
                setState(() {});
              },
              controller: emailcontroller,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  label: Text(
                    'E-mail',
                    style: TextStyle(
                        color: Colors.black.withOpacity(
                      0.2,
                    )),
                  ),
                  filled: true,
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
              height: 44,
              child: TextField(
                controller: passwordcontroller,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    label: Text(
                      'Password',
                      style: TextStyle(
                        color: Colors.black.withOpacity(
                          0.2,
                        ),
                      ),
                    ),
                    filled: true,
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
          ),
          const SizedBox(
            height: 7,
          ),
          const Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Forgot password?',
              style: TextStyle(color: Color(0xff3797EF)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // InkWell(
          //   onTap: () {
          //     final bool emailValid = RegExp(
          //             r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          //         .hasMatch(emailcontroller.text);
          //   },
          InkWell(
            onTap: () async {
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(emailcontroller.text);
              if (emailValid && (passwordcontroller.text.length > 7)) {
                try {
                  await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                  )
                      .then((value) {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => const RoomScreens()),
                        (p) => false);
                  });
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'wrong-password') {
                    setState(() {
                      passwordcontroller.clear();
                    });
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                  } else if (e.code == 'user-not-found') {
                    setState(() {
                      emailcontroller.clear();
                      passwordcontroller.clear();
                    });
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                  }
                } catch (e) {
                  print(e);
                }
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color(0xff3797EF),
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                  child: Text(
                'Log in',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          const SizedBox(
            height: 37,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Facebook.png',
                height: 17,
              ),
              SizedBox(
                width: 10,
              ),
              const Text(
                'Log in with Facebook',
                style: TextStyle(color: Color(0xff3797EF)),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black.withOpacity(
                        0.4,
                      ),
                      fontSize: 12),
                ),
              ),
              Expanded(child: Divider())
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 84,
            width: double.infinity,
            child: Column(children: [
              Divider(color: Colors.black.withOpacity(0.4), thickness: 0.5),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Instagram от Facebook ',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'SFProText',
                          color: Colors.black.withOpacity(0.4)),
                    ),
                  ],
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
  //   if (e.code == 'weak-password') {
  //     setState(() {
  //       passWordController.clear();
  //     });
  //     ScaffoldMessenger.of(context)
  //         .showSnackBar(SnackBar(content: Text(e.message ?? '')));
  //   } else if (e.code == 'email-already-in-use') {
  //     setState(() {
  //       emailController.clear();
  //       passWordController.clear();
}
