import 'package:flutter/material.dart';

import '../widgets/HighlightStoryWidget.dart';
import '../widgets/InfoItemWidget.dart';
import '../widgets/ProfilePictureWidget.dart';
import '../widgets/TabItemWidget.dart';

class ProfilePage extends StatelessWidget {
  List urlImage = [
    "https://i.pinimg.com/736x/8f/8f/d7/8f8fd745b9e5e87a8139bc55a8028f81.jpg",
    "https://i.pinimg.com/736x/0f/01/26/0f0126216dae917686d75304e7fc122f.jpg",
    "https://i.pinimg.com/736x/88/bf/c5/88bfc5b6a625d138d5d716cfdb3e6783.jpg",
    "https://i.pinimg.com/736x/c3/34/80/c33480781ac4acc527a0e71985830653.jpg",
    "https://i.pinimg.com/736x/23/c6/1c/23c61cb0475c1cdabd1056b635242597.jpg",
  ];

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
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
            itemBuilder: (context, index) => Image.network(
              urlImage.length > index && urlImage[index].isNotEmpty
                  ? urlImage[index]
                  : "https://i.pinimg.com/736x/c6/9c/cb/c69ccb248f42ceea591d79f59481861d.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_rounded),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
