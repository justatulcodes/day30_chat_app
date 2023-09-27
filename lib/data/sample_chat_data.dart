
class ChatItem {
  String name;
  String lastMessage;
  String lastMessageTime;
  int unreadMsgCount;
  bool isOnline;
  String profileImageAddress;
  int conversationListIndex;

  ChatItem(
      {required this.isOnline,
      required this.lastMessage,
      required this.lastMessageTime,
      required this.name,
      required this.profileImageAddress,
      required this.unreadMsgCount,
      required this.conversationListIndex});
}

 final chatItemsList = <ChatItem>[
    ChatItem(
      isOnline: false,
      lastMessage: "Have you seen the book I sent you?",
      lastMessageTime: "2 Mins Ago",
      name: "Patrick Nelson",
      profileImageAddress: "profile1.jpg",
      unreadMsgCount: 2,
      conversationListIndex: 0,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "Hey! How's it going?",
      lastMessageTime: "5 Mins Ago",
      name: "Emily Johnson",
      profileImageAddress: "profile2.jpg",
      unreadMsgCount: 0,
      conversationListIndex: 1,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "Sure, I'll check it out.",
      lastMessageTime: "10 Mins Ago",
      name: "Michael Smith",
      profileImageAddress: "profile3.jpg",
      unreadMsgCount: 1,
      conversationListIndex: 2,
    ),
    // Add 12 more chat items here to make a total of 15:
    ChatItem(
      isOnline: false,
      lastMessage: "How was your day?",
      lastMessageTime: "15 Mins Ago",
      name: "Jennifer Davis",
      profileImageAddress: "profile4.jpg",
      unreadMsgCount: 3,
      conversationListIndex: 0,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "I have a surprise for you!",
      lastMessageTime: "20 Mins Ago",
      name: "Alex Johnson",
      profileImageAddress: "profile5.jpg",
      unreadMsgCount: 0,
      conversationListIndex: 1,
    ),
    ChatItem(
      isOnline: false,
      lastMessage: "Let's meet tomorrow.",
      lastMessageTime: "25 Mins Ago",
      name: "Laura Williams",
      profileImageAddress: "profile6.jpg",
      unreadMsgCount: 2,
      conversationListIndex: 2,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "How are you doing?",
      lastMessageTime: "30 Mins Ago",
      name: "Daniel Brown",
      profileImageAddress: "profile7.jpg",
      unreadMsgCount: 1,
      conversationListIndex: 0,
    ),
    ChatItem(
      isOnline: false,
      lastMessage: "Can you help me with this?",
      lastMessageTime: "35 Mins Ago",
      name: "Sophia Anderson",
      profileImageAddress: "profile8.jpg",
      unreadMsgCount: 0,
      conversationListIndex: 1,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "See you later!",
      lastMessageTime: "40 Mins Ago",
      name: "James Miller",
      profileImageAddress: "profile9.jpg",
      unreadMsgCount: 1,
      conversationListIndex: 2,
    ),
    ChatItem(
      isOnline: false,
      lastMessage: "Thanks for the help.",
      lastMessageTime: "45 Mins Ago",
      name: "Ava Martinez",
      profileImageAddress: "profile10.jpg",
      unreadMsgCount: 2,
      conversationListIndex: 0,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "What's your plan for the weekend?",
      lastMessageTime: "50 Mins Ago",
      name: "William Turner",
      profileImageAddress: "profile11.jpg",
      unreadMsgCount: 0,
      conversationListIndex: 1,
    ),
    ChatItem(
      isOnline: false,
      lastMessage: "I miss you!",
      lastMessageTime: "55 Mins Ago",
      name: "Olivia Clark",
      profileImageAddress: "profile12.jpg",
      unreadMsgCount: 3,
      conversationListIndex: 2,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "Let's have dinner together.",
      lastMessageTime: "60 Mins Ago",
      name: "Benjamin Hall",
      profileImageAddress: "profile13.jpg",
      unreadMsgCount: 1,
      conversationListIndex: 0,
    ),
    ChatItem(
      isOnline: true,
      lastMessage: "How's your new project going?",
      lastMessageTime: "65 Mins Ago",
      name: "Emma Lewis",
      profileImageAddress: "profile14.jpg",
      unreadMsgCount: 0,
      conversationListIndex: 1,
    ),
    ChatItem(
      isOnline: false,
      lastMessage: "Call me when you're free.",
      lastMessageTime: "70 Mins Ago",
      name: "Noah Turner",
      profileImageAddress: "profile15.jpg",
      unreadMsgCount: 2,
      conversationListIndex: 2,
    ),
  ];