//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/network_call.dart';
import 'package:instgram_clon/room.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginWithMobileApiScreen extends StatefulWidget {
  const LoginWithMobileApiScreen({super.key});

  @override
  State<LoginWithMobileApiScreen> createState() =>
      _LoginWithMobileApiScreenState();
}

class _LoginWithMobileApiScreenState extends State<LoginWithMobileApiScreen> {
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  bool sendOtp = false;
  final scaffoldKey = GlobalKey<ScaffoldMessengerState>();
  //FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  String? verificationIdData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login With Mobile Otp'),
      ),
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
              controller: mobilecontroller,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  label: Text(
                    'Enter Mobile Number',
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
          if (sendOtp)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                height: 44,
                child: TextField(
                  onChanged: (v) {
                    setState(() {});
                  },
                  controller: otpcontroller,
                  style: const TextStyle(fontSize: 12),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      label: Text(
                        'Enter OTP',
                        style: TextStyle(
                          color: Colors.black.withOpacity(
                            0.2,
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF2F2F2),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
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
                          borderSide: BorderSide(
                              color: Colors.black.withOpacity(0.1)))),
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
          InkWell(
            onTap: () async {
              if (!sendOtp && mobilecontroller.text.length == 10) {
                try {
                  NetworkCalls()
                      .getOTP(mobile: mobilecontroller.text)
                      .then((value) {
                    if (value?.data['result'] == 'Success') {
                      setState(() {
                        sendOtp = true;
                      });
                      print(value?.data);
                    }
                  });
                  // firebaseAuth.verifyPhoneNumber(
                  //   phoneNumber: '+91${mobilecontroller.text}',
                  //   verificationCompleted: (PhoneAuthCredential credential) {},
                  //   verificationFailed: (FirebaseAuthException e) {},
                  //   codeSent: (String verificationId, int? resendToken) {
                  //     setState(() {
                  //       verificationIdData = verificationId;
                  //       sendOtp = true;
                  //     });

                  //     codeAutoRetrievalTimeout: (String verificationId) {},
                  //   );
                  // } on FirebaseAuthException catch (e) {
                  //   print('---------------${e.code}-----------');
                } catch (e) {
                  print('----------${e}-----------');
                }
              } else if ((mobilecontroller.text.length == 10 &&
                  (otpcontroller.text.length == 6))) {
                NetworkCalls()
                    .verifyOtp(
                        mobile: mobilecontroller.text, otp: otpcontroller.text)
                    .then((value) {
                  print(value);
                  if (value?.data['result'] == 'Success') {
                    SharedPreferences.getInstance().then((sharedValue) {
                      print(value?.data['token']);
                      sharedValue.setString('token', value?.data['token']);
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const RoomScreens()));
                    });
                  }
                });
                // PhoneAuthCredential phoneAuthCredential =
                //     PhoneAuthProvider.credential(
                //         verificationId: verificationIdData!,
                //         smsCode: otpcontroller.text);
                // firebaseAuth
                //     .signInWithCredential(phoneAuthCredential)
                //     .then((value) => Navigator.of(context).push(
                //         MaterialPageRoute(
                //             builder: (context) => const RoomScreens())))
                //     .onError((error, stackTrace) =>
                //         ScaffoldMessenger.of(context).showSnackBar(
                //             SnackBar(content: Text('Wrong otp'))));
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: (!sendOtp && mobilecontroller.text.length == 10) ||
                          (mobilecontroller.text.length == 10 &&
                              otpcontroller.text.length == 6)
                      ? const Color(0xff3797EF)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                !sendOtp ? 'sent OTP' : 'Log in',
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
}
