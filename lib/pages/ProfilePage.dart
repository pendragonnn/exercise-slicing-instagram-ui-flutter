import 'package:flutter/material.dart';

import '../widgets/HighlightStoryWidget.dart';
import '../widgets/InfoItemWidget.dart';
import '../widgets/ProfilePictureWidget.dart';
import '../widgets/TabItemWidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "Denji",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.arrow_drop_down)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              ProfilePictureWidget(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InfoItemWidget("Posts", "20"),
                    InfoItemWidget("Followers", "450"),
                    InfoItemWidget("Following", "3432"),
                  ],
                ),
              )
            ]),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Denji",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: const TextSpan(
                text: "lorem ipsum sit dolorit amet",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: " #hastag",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                    children: [],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link goes here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HighlightStoryWidget(
                    title: "Pochita!",
                    url:
                        "https://i.pinimg.com/736x/c6/9c/cb/c69ccb248f42ceea591d79f59481861d.jpg",
                  ),
                  HighlightStoryWidget(
                      title: "eat eat eat",
                      url:
                          "https://i.pinimg.com/736x/df/4a/a0/df4aa0a83abdc4d7a7e5355c1b1f1f7d.jpg"),
                  HighlightStoryWidget(
                    title: "activity",
                    url:
                        "https://i.pinimg.com/736x/1a/c0/01/1ac0012a7a412f491c0e9e2f87452743.jpg",
                  ),
                  HighlightStoryWidget(
                    title: "aquarium date",
                    url:
                        "https://i.pinimg.com/736x/0b/39/ad/0b39adfc4223ae1e7472a708d47fbdb5.jpg",
                  ),
                  HighlightStoryWidget(
                    title: "me",
                    url:
                        "https://i.pinimg.com/736x/bc/f4/f1/bcf4f15ee5653d41ab233a6ff8251369.jpg",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItemWidget(Icons.grid_on_outlined, true),
              TabItemWidget(Icons.person_pin_outlined, false),
            ],
          ),
        ],
      ),
    );
  }
}
