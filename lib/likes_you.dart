import 'package:flutter/material.dart';

class LikesYou extends StatefulWidget {
  const LikesYou({super.key});

  @override
  State<LikesYou> createState() => _LikesYouState();
}

class _LikesYouState extends State<LikesYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Following request',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'New',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                    ),
                    radius: 22,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Kerennne',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' liked your photo',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 1h',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80'))),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 44,
                    width: 44,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.white)),
                    child: Stack(
                      children: [
                        Container(
                            height: 32,
                            width: 32,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                                    )))),
                        Align(
                          child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                                      )))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'kiero_d',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' zackjhon',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' and',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 26 others \n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' liked your photo',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 2h',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80'))),
                  )
                ],
              )
            ],
          ),
          Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'This Week',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  )),
              Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1965&q=80',
                        ),
                        radius: 22,
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'craig_love',
                              style: TextStyle(fontWeight: FontWeight.bold),
                              children: [
                                TextSpan(
                                    text: ' mentioned you in a \n comment:',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: ' @jacob_w',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.blue[200])),
                                TextSpan(
                                    text: ' exactly..\n',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal)),
                                TextSpan(
                                    text: ' 2d',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80'))),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Reply',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                    ),
                    radius: 22,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'martini_rond',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' started \n following you',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 3d',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                        color: Colors.white),
                    child: Center(child: Text('Message')),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                    ),
                    radius: 22,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'maxjacobson',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' started \n following  you',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 3d',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                        color: Colors.white),
                    child: Center(child: Text('Message')),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                    ),
                    radius: 22,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'miss_potter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: ' started following \n you',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' 3d',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400)),
                        ]),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Container(
                    height: 28,
                    width: 90,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(0),
                        ),
                        color: Colors.blue),
                    child: Center(
                        child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    )),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
