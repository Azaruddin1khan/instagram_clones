import 'package:flutter/material.dart';
import 'package:instgram_clon/chat_screen.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

PageController pageController = PageController();
int pagecount = 1;
AutoScrollController autoScrollController = AutoScrollController();

class _HomePageScreenState extends State<HomePageScreen> {
  List<Map<String, dynamic>> images = [
    {
      'tag': 'Your Story',
      'image': 'assets/inner_Oval2.png',
    },
    {
      'tag': 'raman',
      'image': 'assets/inneroval4.png',
    },
    {
      'tag': 'rahul',
      'image': 'assets/inneroval5.png',
    },
    {
      'tag': 'raykhul',
      'image': 'assets/inneroval8.png',
    },
    {
      'tag': 'jacon',
      'image': 'assets/inneroval4.png',
    },
    {
      'tag': 'jacob',
      'image': 'assets/inner_Oval2.png',
    },
  ];
  List<Map<String, dynamic>> post = [
    {
      'UserProfile_image':
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'UserProfile_name': 'jshon',
      'UserLocation': 'jaipur',
      'verified': true,
      'files': [
        {
          'image': 'Image',
          'url':
              'https://fastly.picsum.photos/id/127/200/300.jpg?hmac=H0aErkmw8FxF1Tp7uFj4cV-aVMxDDjOVKTwGwS6REXw',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
      ],
      'caption':
          'Breaking free form the mundane grind,\n Chasing dreams on roads',
      'like_count': 750,
      'comment_count': 1100,
      'saved': false,
      'liked': false,
      'post_time': '2023-08-26 15:46:00',
      'post_time_temp':
          DateTime.now().subtract(const Duration(days: 2)).toString(),
      'post_location': 'DownTown',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'liked_username': 'rakesh',
        }
      ]
    },
    {
      'UserProfile_image':
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'UserProfile_name': 'jshon',
      'UserLocation': 'jaipur',
      'verified': true,
      'files': [
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
      ],
      'caption':
          'Breaking free form the mundane grind,\n Chasing dreams on roads',
      'like_count': 750,
      'comment_count': 1100,
      'saved': true,
      'liked': true,
      'post_time': '2023-08-26 15:46:00',
      'post_time_temp':
          DateTime.now().subtract(const Duration(days: 2)).toString(),
      'post_location': 'DownTown',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'liked_username': 'rakesh',
        }
      ]
    },
    {
      'UserProfile_image':
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'UserProfile_name': 'jshon',
      'UserLocation': 'jaipur',
      'verified': true,
      'files': [
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
      ],
      'caption':
          'Breaking free form the mundane grind,\n Chasing dreams on roads',
      'like_count': 750,
      'comment_count': 1100,
      'saved': true,
      'liked': true,
      'post_time': '2023-08-26 15:46:00',
      'post_time_temp':
          DateTime.now().subtract(const Duration(days: 2)).toString(),
      'post_location': 'DownTown',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'liked_username': 'rakesh',
        }
      ]
    },
    {
      'UserProfile_image':
          'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      'UserProfile_name': 'jshon',
      'UserLocation': 'jaipur',
      'verified': true,
      'files': [
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'Image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
        {
          'image': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
          'thumbnail': '',
        },
      ],
      'caption':
          'Breaking free form the mundane grind,\n Chasing dreams on roads',
      'like_count': 750,
      'comment_count': 1100,
      'saved': true,
      'liked': true,
      'post_time': '2023-08-26 15:46:00',
      'post_time_temp':
          DateTime.now().subtract(const Duration(days: 2)).toString(),
      'post_location': 'DownTown',
      'recently_liked_by': [
        {
          'liked_userimage':
              'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
          'liked_username': 'rakesh',
        }
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:
            InkWell(onTap: () {}, child: const Icon(Icons.camera_alt_outlined)),
        title: Image.asset(
          'assets/instagram_logo.png',
          height: 30,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {},
            child: Image.asset(
              'assets/igtv.png',
              height: 25,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ChatScreen();
                    },
                  ),
                );
              },
              icon: const Icon(Icons.message))
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 98,
            width: double.infinity,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                colors: [
                                  Color(0xffFBAA47),
                                  Color(0xffD91A46),
                                  Color(0xffA60F93),
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage(images[index]['image']),
                                  radius: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          images[index]['tag'],
                          style: const TextStyle(
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const Divider(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: post.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                              color: const Color(0xffFBAA47),
                              borderRadius: BorderRadius.circular(30)),
                          child: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      post[index]['UserProfile_image']),
                                  radius: 25,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  post[index]['UserProfile_name'],
                                  style: const TextStyle(
                                      fontFamily: 'SFProText',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              post[index]['UserLocation'],
                              style: const TextStyle(
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          icon: const Icon(Icons.more_horiz_outlined),
                          onPressed: () {},
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 375,
                      child: PageView.builder(
                        controller: pageController,
                        onPageChanged: (v) {
                          setState(() {
                            pagecount = v + 1;
                          });
                        },
                        itemCount: post[index]['files'].length,
                        //shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index2) {
                          return Image.network(
                            post[index]['files'][index2]['url'],
                            fit: BoxFit.fitWidth,
                          );
                        },
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if ((post[index]["liked"] as bool) ==
                                        true) {
                                      post[index]["liked"] = false;
                                    } else {
                                      post[index]["liked"] = true;
                                    }
                                  });
                                },
                                icon: (post[index]["liked"] as bool) == true
                                    ? Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      )
                                    : Icon(Icons.favorite_border),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.comment_outlined),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.share_outlined),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.black,
                            width: 60,
                            child: const Row(
                              children: [
                                // ListView(
                                //     scrollDirection: Axis.vertical,
                                //     //post[index]['files'].length
                                //     children: List.generate(5, (index) {
                                //       return Text("dfd");
                                //     })),

                                // for (var s in "Hello\nThere\nUser".split('\n'))
                                //   Row(
                                //     children: <Widget>[
                                //       Icon(Icons.power_input),
                                //     ],
                                //   )
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        CircleAvatar(
                          radius: 7.5,
                          backgroundImage: NetworkImage(post[index]
                              ['recently_liked_by'][0]['liked_userimage']),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'liked by',
                            style: TextStyle(
                                fontFamily: 'SFProText',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.black),
                            children: [
                              TextSpan(
                                  text: post[index]['recently_liked_by'][0]
                                      ['liked_username'],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: ' and'),
                              TextSpan(
                                  text: ' Others',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      text: TextSpan(
                        text: post[index]['UserProfile_name'],
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: post[index]['caption'],
                              style: TextStyle(
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ),
                    const Text(
                      'View all comments',
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
