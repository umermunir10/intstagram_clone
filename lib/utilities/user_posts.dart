import "package:flutter/material.dart";
import 'package:flutter_carousel_slider/carousel_slider.dart';

class UserPosts extends StatefulWidget {
  final String name;

  const UserPosts({super.key, required this.name});

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  int likes = 0;

  void incrementLikes() {
    setState(() {
      likes += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black38, width: 3)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PopupMenuButton<PopupMenuItem>(
                  color: Colors.white,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.menu),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.report),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Report'),
                          ],
                        )),
                        const PopupMenuDivider(),
                        const PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.bookmark),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Save'),
                          ],
                        )),
                        const PopupMenuDivider(),
                        const PopupMenuItem(
                            child: Row(
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Share'),
                          ],
                        )),
                      ])
            ],
          ),
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: CarouselSlider(
            slideIndicator: CircularSlideIndicator(
                padding: const EdgeInsets.only(bottom: 10),
                currentIndicatorColor: Colors.blue),
            children: [
              Container(
                //height: 300,
                width: double.infinity,
                color: Colors.yellow,
              ),
              Container(
                // height: 300,
                width: double.infinity,
                color: Colors.purple,
              ),
              Container(
                // height: 300,
                width: double.infinity,
                color: Colors.red,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.favorite),
                    onPressed: incrementLikes,
                    iconSize: 28,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  const Icon(Icons.share)
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Text('Liked by '),
              Text(
                widget.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              Text(
                '$likes',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                ' others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 16, top: 8),
            child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                        text: widget.name,
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const TextSpan(
                        text:
                            ' This is the clone of Instagram Application that is being created.')
                  ]),
            )),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
