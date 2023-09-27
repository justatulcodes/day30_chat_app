class Story {
  String profileImageAddress;
  String name;
  String storyImageAddress;
  bool isSeen;

  Story({
    required this.name,
    required this.isSeen,
    required this.profileImageAddress,
    required this.storyImageAddress,
  });
}

final storyList = <Story>[
    Story(
      name: "Michael Smith",
      profileImageAddress: "profile3.jpg",
      storyImageAddress: "story_image1.jpg",
      isSeen: false,
    ),
    // Add 8 more story items here with matching names and profile images:
    Story(
      name: "Emily Johnson",
      profileImageAddress: "profile2.jpg",
      storyImageAddress: "story_image2.jpg",
      isSeen: true,
    ),
    Story(
      name: "Jennifer Davis",
      profileImageAddress: "profile4.jpg",
      storyImageAddress: "story_image3.jpg",
      isSeen: false,
    ),
    Story(
      name: "Alex Johnson",
      profileImageAddress: "profile5.jpg",
      storyImageAddress: "story_image4.jpg",
      isSeen: true,
    ),
    Story(
      name: "Laura Williams",
      profileImageAddress: "profile6.jpg",
      storyImageAddress: "story_image5.jpg",
      isSeen: false,
    ),
    Story(
      name: "Daniel Brown",
      profileImageAddress: "profile7.jpg",
      storyImageAddress: "story_image6.jpg",
      isSeen: true,
    ),
    Story(
      name: "Sophia Anderson",
      profileImageAddress: "profile8.jpg",
      storyImageAddress: "story_image7.jpg",
      isSeen: false,
    ),
    Story(
      name: "James Miller",
      profileImageAddress: "profile9.jpg",
      storyImageAddress: "story_image8.jpg",
      isSeen: true,
    ),
    Story(
      name: "Ava Martinez",
      profileImageAddress: "profile10.jpg",
      storyImageAddress: "story_image9.jpg",
      isSeen: false,
    ),
  ];