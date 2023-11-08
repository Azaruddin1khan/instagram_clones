import 'package:flutter/material.dart';

class Following extends StatefulWidget {
  const Following({super.key});

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
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
                  // Row(
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Text(
                  //           'Rahul',
                  //           style: TextStyle(fontWeight: FontWeight.bold),
                  //         ),
                  //       ],
                  //     ),
                  //     Column(
                  //       children: [Text(' liked three post')],
                  //     )
                  //   ],
                  // ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.network(
                          'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                          height: 44,
                          width: 44,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.network(
                          'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                          height: 44,
                          width: 44,
                        ),
                      ),
                      Image.network(
                        'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1776&q=80',
                        height: 44,
                        width: 44,
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
                //children: [Text('Rahul, and Raman, liked Tushar Photo')],
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
                              text: ' craig_love \n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' liked',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal)),
                          TextSpan(
                              text: ' joshua_i',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: ' photo',
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
                  //          children: [Text('Rahul started following Alex')],
                  children: [
                    RichText(
                      text: TextSpan(
                          text: 'Kiero_d',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                                text: ' started following \n',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal)),
                            TextSpan(
                                text: ' carig_love',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' 1h',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400)),
                          ]),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
