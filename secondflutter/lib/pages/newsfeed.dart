import 'package:secondflutter/model/story_model.dart';
import 'package:secondflutter/widget/createpost.dart';
import 'package:secondflutter/widget/newsfeed_post.dart';
import 'package:secondflutter/widget/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeed extends StatefulWidget {
  const Newsfeed({super.key});

  @override
  State<Newsfeed> createState() => _NewsfeedState();
}

class _NewsfeedState extends State<Newsfeed> {
  List<StoryModel> stories = [
    StoryModel(
      id: "1",
      username: "Juan",
      profileImagePath: "assets/profile/prof1.jpg",
      storyImagePath: "assets/myday/myday1.jpg",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),

    StoryModel(
      id: "2",
      username: "Clara",
      profileImagePath: "assets/profile/prof2.jpg",
      storyImagePath: "assets/myday/myday2.jpg",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),

    StoryModel(
      id: "3",
      username: "Maria",
      profileImagePath: "assets/profile/prof3.jpg",
      storyImagePath: "assets/myday/myday3.jpg",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),

    StoryModel(
      id: "4",
      username: "Roberto",
      profileImagePath: "assets/profile/prof4.jpg",
      storyImagePath: "assets/myday/myday4.jpg",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),

    StoryModel(
      id: "5",
      username: "Alfonso",
      profileImagePath: "assets/profile/prof5.jpg",
      storyImagePath: "assets/myday/myday5.jpg",
      timestamp: DateTime.now().subtract(const Duration(hours: 5)),
      isViewed: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset("assets/icon/logo.png", height: 80),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Createpost(),
            StoriesList(stories: stories, onStoryTap: (story) {}),
            NewsFeedPost(
              name: "John Doe",
              caption: "This is a sample caption for John's post.",
              imageurl: "assets/myday/myday1.jpg",
            ),
            NewsFeedPost(
              name: "Jane Doe",
              caption: "This is a sample caption for John's post.",
              imageurl: "assets/myday/myday1.jpg",
            ),
            NewsFeedPost(
              name: "Juan Perez",
              caption: "This is a sample caption for John's post.",
              imageurl: "assets/myday/myday1.jpg",
            ),
          ],
        ),
      ),
    );
  }
}
