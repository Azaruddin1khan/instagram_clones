import 'package:flutter/material.dart';
import 'package:instgram_clon/Utils.dart';

class ProfilePost extends StatefulWidget {
  const ProfilePost({super.key});

  @override
  State<ProfilePost> createState() => _ProfilePostState();
}

class _ProfilePostState extends State<ProfilePost> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: Utils.images.length,
      shrinkWrap: true,
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
