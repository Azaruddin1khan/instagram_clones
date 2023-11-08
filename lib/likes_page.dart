import 'package:flutter/material.dart';
import 'package:instgram_clon/following.dart';
import 'package:instgram_clon/likes_you.dart';

class Likeapage extends StatefulWidget {
  const Likeapage({super.key});

  @override
  State<Likeapage> createState() => _LikeapageState();
}

class _LikeapageState extends State<Likeapage> with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 1,
      length: 2,
      vsync: this,
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
                controller: tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('Following',
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w200)),
                  ),
                  Tab(
                    child: Text('You',
                        style: TextStyle(
                            fontFamily: 'SFProText',
                            fontWeight: FontWeight.w200)),
                  )
                ]),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [Following(), LikesYou()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
