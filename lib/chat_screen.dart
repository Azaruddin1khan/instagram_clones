import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  AutoScrollController scrollController = AutoScrollController();

  List<Map<String, dynamic>> ChatMessages = [
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 13))
    },
    {
      'message': "sfscsfdd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 12))
    },
    {
      'message': "sfscsdvsnm xbchjsbd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 11))
    },
    {
      'message': "sfskjdxjaskbsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 10))
    },
    {
      'message': "sfc zxcsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 9))
    },
    {
      'message': "sfxbsbcsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 8))
    },
    {
      'message': "sfssbjxbasjbcbabcbhbb hhzxd x,sac x",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 7))
    },
    {
      'message': "sfcnjsackjnsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 6))
    },
    {
      'message': "sfjscjksnkjsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 5))
    },
    {
      'message': "sfaVSsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 4))
    },
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 3))
    },
    {
      'message': "sfSDJKCAJSKsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 2))
    },
    {
      'message': "sfslkscklnsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 1))
    },
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 13))
    },
    {
      'message': "sfscsfdd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 12))
    },
    {
      'message': "sfscsdvsnm xbchjsbd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 11))
    },
    {
      'message': "sfskjdxjaskbsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 10))
    },
    {
      'message': "sfc zxcsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 9))
    },
    {
      'message': "sfxbsbcsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 8))
    },
    {
      'message': "sfssbjxbasjbcbabcbhbb hhzxd x,sac x",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 7))
    },
    {
      'message': "sfcnjsackjnsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 6))
    },
    {
      'message': "sfjscjksnkjsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 5))
    },
    {
      'message': "sfaVSsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 4))
    },
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 3))
    },
    {
      'message': "sfSDJKCAJSKsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 2))
    },
    {
      'message': "sfslkscklnsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 1))
    },
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 13))
    },
    {
      'message': "sfscsfdd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 12))
    },
    {
      'message': "sfscsdvsnm xbchjsbd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 11))
    },
    {
      'message': "sfskjdxjaskbsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 10))
    },
    {
      'message': "sfc zxcsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 9))
    },
    {
      'message': "sfxbsbcsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 8))
    },
    {
      'message': "sfssbjxbasjbcbabcbhbb hhzxd x,sac x",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 7))
    },
    {
      'message': "sfcnjsackjnsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 6))
    },
    {
      'message': "sfjscjksnkjsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 5))
    },
    {
      'message': "sfaVSsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 4))
    },
    {
      'message': "sfsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 3))
    },
    {
      'message': "sfSDJKCAJSKsd",
      'me': false,
      'time': DateTime.now().subtract(const Duration(minutes: 2))
    },
    {
      'message': "sfslkscklnsd",
      'me': true,
      'time': DateTime.now().subtract(const Duration(minutes: 1))
    },
  ];
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        scrollController.scrollToIndex(ChatMessages.length - 1);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          ListView.builder(
            controller: scrollController,
            itemCount: ChatMessages.length,
            itemBuilder: (context, index) {
              return AutoScrollTag(
                key: ValueKey(index),
                controller: scrollController,
                index: index,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 8,
                      bottom: (ChatMessages.length - 1 == index) ? 100 : 8),
                  child: Row(
                    children: [
                      if (ChatMessages[index]['me'])
                        const Expanded(child: SizedBox()),
                      Container(
                        constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width / 1.3),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(12),
                                topRight: const Radius.circular(12),
                                bottomLeft: Radius.circular(
                                    !ChatMessages[index]['me'] ? 0 : 12),
                                bottomRight: Radius.circular(
                                    ChatMessages[index]['me'] ? 0 : 12))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          child: Column(
                            children: [
                              Text(
                                ChatMessages[index]['message'] + '$index',
                                style: const TextStyle(color: Colors.black),
                              ),
                              Text(
                                DateFormat('MMM dd,hh:mm a')
                                    .format(ChatMessages[index]['time']),
                                style: const TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                maxLength: 200,
                controller: controller,
                style: const TextStyle(fontSize: 14),
                cursorColor: Colors.grey,
                onChanged: (v) {
                  setState(() {});
                },
                maxLines: 4,
                minLines: 1,
                decoration: InputDecoration(
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          ChatMessages.add({
                            'me': true,
                            'message': controller.text,
                            'time': DateTime.now()
                          });
                          controller.clear();
                          scrollController.scrollToIndex(
                              ChatMessages.length - 1,
                              duration: const Duration(milliseconds: 200),
                              preferPosition: AutoScrollPosition.middle);
                        });
                      },
                      child: const Icon(
                        Icons.send,
                      ),
                    ),
                    hintText: 'Enter Message',
                    filled: true,
                    fillColor: Colors.white,
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
          )
        ],
      ),
    );
  }
}
