import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clon/date_input_screen.dart';
import 'package:instgram_clon/email_input_screen.dart';
import 'package:instgram_clon/date_input_screen.dart';

class NameInputScreen extends StatefulWidget {
  const NameInputScreen({super.key});

  @override
  State<NameInputScreen> createState() => _NameInputScreenState();
}

Map<String, dynamic> userValue = {
  'name': null,
  'dob': null,
  'mobile': FirebaseAuth.instance.currentUser?.phoneNumber,
  'email': null
};

class _NameInputScreenState extends State<NameInputScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Name Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'What\'s your name?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 50),
            child: Text(
              'Add your name so that friends can find you.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          SizedBox(
            height: 44,
            child: TextField(
              onChanged: (v) {
                setState(() {});
              },
              controller: nameController,
              style: const TextStyle(fontSize: 12),
              cursorColor: Colors.grey,
              decoration: InputDecoration(
                  filled: true,
                  hintText: 'Enter Full Name Here',
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
              if (nameController.text.length > 2) {
                setState(() {
                  userValue['name'] = nameController.text;
                });
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const DOBInputScreen();
                  },
                ));
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: nameController.text.length > 2
                      ? const Color(0xff3797EF)
                      : Colors.grey,
                  borderRadius: BorderRadius.circular(5)),
              child: const Center(
                  child: Text(
                'Next',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
