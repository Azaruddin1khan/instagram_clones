import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/room.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool passwardVisible = true;
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
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
                    border: UnderlineInputBorder(
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
              'Forget passward?',
              style: TextStyle(color: Color(0xff3797EF)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                  .hasMatch(emailcontroller.text);
              if (emailValid && (passwordcontroller.text.length > 7)) {
                try {
                  await firebaseAuth
                      .createUserWithEmailAndPassword(
                    email: emailcontroller.text,
                    password: passwordcontroller.text,
                  )
                      .then((value) {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                      email: emailcontroller.text,
                      password: passwordcontroller.text,
                    )
                        .then((value) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RoomScreens()));
                    });
                  });
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'weak-password') {
                    setState(() {
                      passwordcontroller.clear();
                    });
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(e.message ?? '')));
                  } else if (e.code == 'email-already-in-use') {
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
                'Sign Up',
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
                'assets/facebook.png',
                height: 17,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log in with Facebook',
                style: TextStyle(color: Color(0xff3797EF)),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const Expanded(child: Divider()),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  'OR',
                  style: TextStyle(
                      color: Colors.black.withOpacity(
                        0.4,
                      ),
                      fontSize: 12),
                ),
              ),
              const Expanded(child: Divider())
            ],
          ),
          const Spacer(),
          SizedBox(
            height: 84,
            width: double.infinity,
            child: Column(children: [
              Divider(color: Colors.black.withOpacity(0.4), thickness: 0.5),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Instagram OR Facebook',
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
}
