import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/network_call.dart';
import 'package:instgram_clon/room.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  TextEditingController mobileController = TextEditingController();
  TextEditingController otpController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController displayNameController = TextEditingController();
  bool sendOtp = false;
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: () {
              Navigator.pop(context);
            }),
        title: Text(
          'Login with Mobile otp',
          style:
              TextStyle(fontFamily: 'SFProText', fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(12),
        width: double.infinity,
        child: ListView(children: [
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
              onChanged: (v) {
                setState(() {});
              },
              controller: displayNameController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  hintText: 'Enter name',
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
                onChanged: (v) {
                  setState(() {});
                },
                controller: emailController,
                style: const TextStyle(fontSize: 12),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                    hintText: 'Enter E-mail',
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
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              print([emailController.text, displayNameController.text]);
              NetworkCalls()
                  .updateProfile(
                      email: emailController.text,
                      name: displayNameController.text)
                  .then((value) {
                if (value?.data['result'] == 'Success') {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) {
                      return RoomScreens();
                    },
                  ), (t) => false);
                }
              });
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: (!sendOtp && mobileController.text.length == 10) ||
                          (mobileController.text.length == 10 &&
                              otpController.text.length > 5)
                      ? const Color(0xff3797EF)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                !sendOtp ? 'Send OTP' : '`Log` in',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
          const SizedBox(
            height: 40,
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
              const Expanded(child: Divider())
            ],
          ),
        ]),
      ),
    );
  }
}
