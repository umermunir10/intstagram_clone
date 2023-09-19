import 'package:flutter/material.dart';
import 'package:instagram_clone/utilities/bubbleStories.dart';
import 'package:instagram_clone/utilities/user_posts.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List people = [
      'Your Story',
      'Adolf Hitler',
      'Napoleon Bonaparte',
      'Joseph Stallon',
      'Harry Trueman',
      'Lord Mountbatten'
    ];

    final List profiles = [
      'Adolf Hitler',
      'Napoleon Bonaparte',
      'Joseph Stallon',
      'Harry Trueman',
      'Lord Mountbatten'
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Instagram',
                style: TextStyle(color: Colors.black),
              ),
              Row(
                children: [
                  Icon(Icons.add, color: Colors.black),
                  Padding(
                    padding: EdgeInsets.all(24.0),
                    child: Icon(Icons.favorite, color: Colors.black),
                  ),
                  Icon(Icons.share, color: Colors.black)
                ],
              )
            ],
          )),
      body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return index == 0
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                    border: Border.all(
                                        color: Colors.black38, width: 3)),
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(38, 30, 0, 0),
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.black87),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text(
                                'Your Story',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      : BubbleStories(text: people[index]);
                  // return BubbleStories(text: people[index]);
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  return UserPosts(name: profiles[index]);
                }),
          )
        ],
      ),
    );
  }
}
