import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Map<String, dynamic>> tempImages = [];

  static const List<Map<String, dynamic>> images = [
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ]
    },
    {
      'tag': 'Style',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1679678691006-0ad24fecb769?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        },
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1518173946687-a4c8892bbd9f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bmF0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'
        }
      ]
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1505144808419-1957a94ca61e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1439853949127-fa647821eba0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1455218873509-8097305ee378?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1414609245224-afa02bfb3fda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1513836279014-a89f7a76ae86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Style',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1497449493050-aad1e7cad165?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1547036967-23d11aacaee0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTd8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1673264933051-3206029946b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1536431311719-398b6704d4cc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Style',
      'image': [
        {
          'type': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1673002094173-b16f2b946780?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1682685797439-a05dd915cee9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxzZWFyY2h8NzB8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://plus.unsplash.com/premium_photo-1677449236313-f8e5eda09a72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzJ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1508459855340-fb63ac591728?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzh8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Style',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1621849400072-f554417f7051?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTN8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Sports',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1615729947596-a598e5de0ab3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTZ8fG5hdHVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'IGTV',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1507041957456-9c397ce39c97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAwfHxuYXR1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
        }
      ]
    },
    {
      'tag': 'Shop',
      'image': [
        {
          'type': 'image',
          'url':
              'https://images.unsplash.com/photo-1580133318324-f2f76d987dd8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE1fHxuYXR1cmV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60'
        }
      ]
    },
  ];

  List<Map<String, dynamic>> tags = [
    {'image': Icons.tv, 'name': 'IGTV'},
    {'image': Icons.shop, 'name': 'Shop'},
    {'image': null, 'name': 'Style'},
    {'image': null, 'name': 'Sports'},
    {'image': null, 'name': 'Auto'},
    {'image': null, 'name': 'Nature'},
    {'image': null, 'name': 'Moon'},
  ];
  @override
  void initState() {
    for (var element in images) {
      tempImages.add(element);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 88),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: SizedBox(
                          height: 36,
                          child: TextField(
                            style: const TextStyle(fontSize: 12),
                            cursorColor: Colors.grey,
                            onChanged: (v) {
                              setState(() {
                                tempImages = [];
                                for (var element in images) {
                                  tempImages.add(element);
                                }
                                print(tempImages.length);
                                tempImages.retainWhere((element) {
                                  print(element['tag']
                                      .toString()
                                      .toLowerCase()
                                      .contains(v.toLowerCase()));
                                  return element['tag']
                                      .toString()
                                      .toLowerCase()
                                      .contains(v.toLowerCase());
                                });
                                print(tempImages.length);
                              });
                            },
                            decoration: InputDecoration(
                                prefix: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    size: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                                hintText: 'Search',
                                filled: true,
                                fillColor:
                                    const Color(0xff767680).withOpacity(0.12),
                                contentPadding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                disabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1))),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black.withOpacity(0.1)))),
                          ),
                        )),
                        const SizedBox(
                          width: 4,
                        ),
                        Image.asset(
                          'assets/scanner.png',
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: tags.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          tempImages = [];
                          for (var element in images) {
                            tempImages.add(element);
                          }
                          print(tempImages.length);
                          tempImages.retainWhere((element) {
                            print(element['tag'] == tags[index]['name']);
                            return element['tag'] == tags[index]['name'];
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Container(
                            height: 32,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(
                                    color: const Color(0xff3C3C43)
                                        .withOpacity(0.18))),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (tags[index]['image'] != null)
                                    Icon(
                                      tags[index]['image'],
                                      size: 15,
                                    ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Text(
                                      tags[index]['name'],
                                      style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  )
                                ]),
                          ),
                        ),
                      );
                    },
                  ))
                ],
              )),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 8,
                  childAspectRatio: 1),
              itemCount: tempImages.length,
              itemBuilder: (context, index) {
                return Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            tempImages[index]['image'][0]['url'],
                          ))),
                  child: Visibility(
                    visible: tempImages[index]['image'].length > 1,
                    child: Align(
                      child: Image.asset(
                        'assets/multiimage.png',
                        height: 17,
                      ),
                      alignment: Alignment.topRight,
                    ),
                  ),
                );

                //               return Column(
                //              children: [
                //               Image.network(
                //                tempImages[index]['image'][0]['url'],
                //               fit: BoxFit.fill,
                //              height: 90,
                //          ),
                //         Text(tempImages[index]['tag'])
                //       ],
                //    );
              },
            ),
          )),
    );
  }
}
