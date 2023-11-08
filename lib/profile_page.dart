import 'dart:io';

//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:instgram_clon/edit_profile_data.dart';
import 'package:instgram_clon/get_started_screen.dart';
import 'package:instgram_clon/network_call.dart';
import 'package:instgram_clon/profile_post.dart';
import 'package:instgram_clon/profile_taggedpost.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  TabController? tabcontroller;

  Map<String, dynamic>? profileDetails;
  @override
  void initState() {
    NetworkCalls().getProfile().then((value) {
      profileDetails = value?.data;
      setState(() {});
      print(value?.data);
    });
    super.initState();
    tabcontroller = TabController(initialIndex: 1, length: 2, vsync: this);
  }

  List<File?> sourceImage = [];

  ImagePicker imagePicker = ImagePicker();
  TextEditingController captioncontroller = TextEditingController();

  Future pickMultiImageFromGallery() async {
    try {
      List<XFile?> image = await imagePicker.pickMultiImage();
      if (image.isNotEmpty) {
        for (var element in image) {
          setState(() {
            sourceImage.add(File(element!.path));
          });
        }
      }
    } catch (e) {}
  }

  // List<Map<String, dynamic>> images = [
  //   {
  //     'tag': 'Your Story',
  //     'image': 'assets/inner_Oval2.png',
  //   },
  //   {
  //     'tag': 'raman',
  //     'image': 'assets/inneroval4.png',
  //   },
  //   {
  //     'tag': 'rahul',
  //     'image': 'assets/inneroval5.png',
  //   },
  //   {
  //     'tag': 'raykhul',
  //     'image': 'assets/inneroval8.png',
  //   },
  //   {
  //     'tag': 'jacon',
  //     'image': 'assets/inneroval4.png',
  //   },
  //   {
  //     'tag': 'jacob',
  //     'image': 'assets/inner_Oval2.png',
  //   },
  //   {
  //     'tag': 'rahul',
  //     'image': 'assets/inner_Oval2.png',
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            '${profileDetails?['user']['name']}',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        endDrawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    SharedPreferences.getInstance().then((value) {
                      value.clear();
                    });
                    //  FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Getstartedscreen();
                    }), (p) => false);
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )),
              TextButton(
                  onPressed: () {
                    //  FirebaseAuth.instance.signOut();
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                      builder: (context) {
                        return Editprofile();
                      },
                    ), (p) => false);
                  },
                  child: Text('Edit Profile')),
            ],
          ),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverList(
                    delegate:
                        SliverChildListDelegate([headerprofileWidget(context)]))
              ];
            },
            body: Column(
              children: [
                TabBar(
                  controller: tabcontroller,
                  tabs: [
                    Tab(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Icon(Icons.grid_on_rounded),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.2,
                        child: Image.asset(
                          'assets/persn.png',
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: TabBarView(
                  controller: tabcontroller,
                  children: [ProfilePost(), ProfiletaggedPost()],
                ))
              ],
            )));
  }

  Widget headerprofileWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1692610492938-37a4eed63ac0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80',
                ),
                radius: 50,
              ),
              Expanded(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '54',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Post',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '450',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '500',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
          Text('${profileDetails?['user']['name']}'),
          TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5)),
              height: 29,
              child: Text(
                'Edit Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                          ),
                          child: Center(
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.blue,
                              ),
                              onPressed: () {
                                pickMultiImageFromGallery();
                              },
                            ),
                          ),
                        ),
                        Text(
                          "New",
                          style: const TextStyle(
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: ((sourceImage.length + 1) * 60),
                  height: 100,
                  alignment: Alignment.center,
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: sourceImage.length,
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
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image:
                                                FileImage(sourceImage[index]!)),
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      // child: CircleAvatar(
                                      //   backgroundImage: AssetImage(
                                      //       sourceImage[index]['image']),
                                      //   radius: 25,
                                      // ),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "Name",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
