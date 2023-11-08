import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreatePostPage extends StatefulWidget {
  const CreatePostPage({super.key});

  @override
  State<CreatePostPage> createState() => _CreatePostPageState();
}

class _CreatePostPageState extends State<CreatePostPage> {
  List<Uint8List> images = [];

  ImagePicker imagePicker = ImagePicker();
  TextEditingController captioncontroller = TextEditingController();

  Future imageSelectedList() async {
    try {
      List<XFile?> files = await imagePicker.pickMultiImage();
      if (files.isNotEmpty) {
        for (var element in files) {
          Uint8List image = await element!.readAsBytes();
          images.add(image);
          setState(() {});
        }
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create Post Screen',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          if (images.isEmpty)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 130),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Center(
                    child: IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: Colors.blue,
                        size: 70,
                      ),
                      onPressed: () {
                        imageSelectedList();
                      },
                    ),
                  ),
                ),
              ),
            ),
          SizedBox(
            height: 120,
            width: double.infinity,
            child: ListView.builder(
              itemCount: images.length,
              padding: const EdgeInsets.only(left: 10),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 120,
                        width: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: MemoryImage(images[index]))),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.zero,
                              icon: const Icon(Icons.cancel),
                              onPressed: () {
                                images.removeAt(index);
                                setState(() {});
                              }),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: index == (images.length - 1),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    size: 70,
                                    color: Colors.blue,
                                  ),
                                  onPressed: () {
                                    imageSelectedList();
                                  })),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                'What\'s on your mind?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              controller: captioncontroller,
              maxLines: 4,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.1))),
                enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.1))),
                disabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.1))),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.black.withOpacity(0.1))),
                hintText: 'Enter Caption',
                helperStyle: const TextStyle(fontFamily: 'SFProText'),
              ),
              onChanged: (v) {
                setState(() {});
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color:
                        captioncontroller.text.trim().isEmpty && images.isEmpty
                            ? Colors.grey
                            : Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    'Add Post',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
