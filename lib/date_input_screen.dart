import 'package:flutter/material.dart';
import 'package:instgram_clon/email_input_screen.dart';
import 'package:instgram_clon/name_input_screen.dart';
import 'package:intl/intl.dart';

class DOBInputScreen extends StatefulWidget {
  const DOBInputScreen({super.key});

  @override
  State<DOBInputScreen> createState() => _DOBInputScreenState();
}

class _DOBInputScreenState extends State<DOBInputScreen> {
  TextEditingController dobController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  DateTime? _selectedDate;

  @override
  void initState() {
    print(userValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOB Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              'What\'s your date of birth?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5.0, bottom: 50),
            child: Text(
              'Use your own date of birth, even if this account is for a business, a pet or something else. No one will see this unless you choose to share it.',
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
            ),
          ),
          InkWell(
            onTap: () async {
              await showDatePicker(
                      context: context,
                      initialDate: _selectedDate == null
                          ? DateTime.now().subtract(Duration(days: 3650))
                          : _selectedDate!, //get today's date
                      firstDate: DateTime(
                          1950), //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2014))
                  .then((value) {
                setState(() {
                  _selectedDate = value;
                  dobController.text =
                      DateFormat('dd MMMM yyyy').format(_selectedDate!);
                  userValue['dob'] = _selectedDate.toString();
                });
              });
            },
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: TextField(
                controller: dobController,
                style: const TextStyle(fontSize: 12, color: Colors.black),
                cursorColor: Colors.grey,
                readOnly: true,
                enabled: false,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Select DOB',
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
          const SizedBox(height: 30),
          InkWell(
            onTap: () async {
              if (dobController.text.isNotEmpty) {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return const EmailInputScreen();
                  },
                ));
              }
            },
            child: Container(
              height: 44,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: dobController.text.isNotEmpty
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
