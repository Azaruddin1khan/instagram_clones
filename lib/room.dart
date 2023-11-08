import 'package:flutter/material.dart';
import 'package:instgram_clon/create_post_page.dart';
import 'package:instgram_clon/home_page.dart';
import 'package:instgram_clon/likes_page.dart';
import 'package:instgram_clon/profile_page.dart';
import 'package:instgram_clon/search_page.dart';

class RoomScreens extends StatefulWidget {
  const RoomScreens({super.key});

  @override
  State<RoomScreens> createState() => _RoomScreensState();
}

enum RoomBootomTabs { home, search, createPost, likes, profile }

class _RoomScreensState extends State<RoomScreens> {
  RoomBootomTabs selectedEnum = RoomBootomTabs.home;

  Widget showCurrentWidget() {
    switch (selectedEnum) {
      case RoomBootomTabs.home:
        return const HomePageScreen();
      case RoomBootomTabs.search:
        return const SearchPage();
      case RoomBootomTabs.createPost:
        return const CreatePostPage();
      case RoomBootomTabs.likes:
        return const Likeapage();
      case RoomBootomTabs.profile:
        return const ProfilePage();
      default:
        return const HomePageScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: showCurrentWidget(),
      bottomNavigationBar: Container(
        height: 45,
        margin: const EdgeInsets.symmetric(horizontal: 26),
        width: double.infinity,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [home(), search(), createPost(), likes(), profile()]),
      ),
    );
  }

  Widget home() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomBootomTabs.home;
        });
      },
      child: Image.asset(
        selectedEnum == RoomBootomTabs.home
            ? 'assets/icons/home_selected.png'
            : 'assets/icons/home.png',
        height: 23,
      ),
    );
  }

  Widget search() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomBootomTabs.search;
        });
      },
      child: Image.asset(
        selectedEnum == RoomBootomTabs.search
            ? 'assets/icons/search_selected.png'
            : 'assets/icons/search.png',
        height: 23,
      ),
    );
  }

  Widget createPost() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomBootomTabs.createPost;
        });
      },
      child: Image.asset(
        'assets/icons/create_post.png',
        height: 23,
      ),
    );
  }

  Widget likes() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomBootomTabs.likes;
        });
      },
      child: Image.asset(
        selectedEnum == RoomBootomTabs.likes
            ? 'assets/icons/likes_selected.png'
            : 'assets/icons/likes.png',
        height: 23,
      ),
    );
  }

  Widget profile() {
    return InkWell(
      onTap: () {
        setState(() {
          selectedEnum = RoomBootomTabs.profile;
        });
      },
      child: Container(
        height: 23,
        width: 23,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1692610492938-37a4eed63ac0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80'))),
      ),
    );
  }
}
