import "package:flutter/material.dart";

class UserPosts extends StatelessWidget {
  final String name;

  const UserPosts({super.key, required this.name});

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
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu)
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.green[300],
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.blue[300],
              ),
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[300],
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share)
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: [
              const Text('Liked by '),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(' and '),
              const Text(
                'others',
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
                        text: name,
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