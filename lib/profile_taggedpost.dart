import 'package:flutter/material.dart';
import 'package:instgram_clon/Utils.dart';

class ProfiletaggedPost extends StatefulWidget {
  const ProfiletaggedPost({super.key});

  @override
  State<ProfiletaggedPost> createState() => _ProfiletaggedPostState();
}

class _ProfiletaggedPostState extends State<ProfiletaggedPost> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: Utils.images.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
      itemBuilder: (context, index) {
        return Image.network(
          Utils.images[index]['image'][0]['Url'],
          fit: BoxFit.fill,
        );
      },
    );
  }
}
