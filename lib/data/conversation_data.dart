class Conversation {
  bool isRecieved;
  String message;
  String deliveredTime;

  Conversation(
      {required this.deliveredTime,
      required this.isRecieved,
      required this.message});
}

final listOfConversations = [
  sampleConversation1,
  sampleConversation2,
  sampleConversation3
];

final sampleConversation1 = [
  Conversation(
    deliveredTime: "Yesterday, 12:01 pm",
    isRecieved: true,
    message: "Hi, Lucy! How's your day going?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:05 pm",
    isRecieved: false,
    message: "Hey! It's going great! Just chilling at home.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:07 pm",
    isRecieved: true,
    message: "That's awesome! Anything exciting happening?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:08 pm",
    isRecieved: false,
    message: "Not really, just catching up on some TV shows.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:10 pm",
    isRecieved: true,
    message: "Cool! Binge-watching, I see. 😄",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:12 pm",
    isRecieved: true,
    message: "Btw, have you tried the new cafe in town?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:13 pm",
    isRecieved: false,
    message: "No, not yet. How is it?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:15 pm",
    isRecieved: true,
    message: "It's pretty cool! Great ambiance and yummy desserts.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:16 pm",
    isRecieved: true,
    message: "We should check it out together sometime.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:17 pm",
    isRecieved: false,
    message: "Definitely! Let's plan for this weekend.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:18 pm",
    isRecieved: true,
    message: "Sounds like a plan! 😎",
  ),
  // Simultaneous messages from both parties
  Conversation(
    deliveredTime: "Yesterday, 12:20 pm",
    isRecieved: true,
    message: "Hey, did you hear about the concert next month?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:20 pm",
    isRecieved: false,
    message: "Yes, I already got the tickets! So excited!",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:22 pm",
    isRecieved: true,
    message: "Awesome! It's going to be epic!",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:22 pm",
    isRecieved: true,
    message: "We should plan a pre-concert hangout.",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:23 pm",
    isRecieved: false,
    message: "Absolutely! Count me in.",
  ),
  // Single-word messages
  Conversation(
    deliveredTime: "Yesterday, 12:25 pm",
    isRecieved: true,
    message: "Pizza?",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:26 pm",
    isRecieved: false,
    message: "Sure!",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:30 pm",
    isRecieved: true,
    message: "Done!",
  ),
  // Longer message
  Conversation(
    deliveredTime: "Yesterday, 12:32 pm",
    isRecieved: false,
    message:
        "Hey, remember that trip we took last summer? We should plan another one soon!",
  ),
  Conversation(
    deliveredTime: "Yesterday, 12:35 pm",
    isRecieved: true,
    message: "Oh yeah! That was so much fun. Let's do it!",
  ),
];

final sampleConversation2 = [
  Conversation(
    deliveredTime: "Today, 10:00 am",
    isRecieved: true,
    message: "Good morning! 🌞 How's everyone doing?",
  ),
  Conversation(
    deliveredTime: "Today, 10:05 am",
    isRecieved: false,
    message: "Morning! 😄 We're all good. Just having breakfast.",
  ),
  Conversation(
    deliveredTime: "Today, 10:07 am",
    isRecieved: true,
    message: "That's great to hear! I'm craving pancakes. 🥞",
  ),
  Conversation(
    deliveredTime: "Today, 10:10 am",
    isRecieved: false,
    message: "Haha! Mom's making them right now. Come over!",
  ),
  Conversation(
    deliveredTime: "Today, 10:15 am",
    isRecieved: true,
    message: "On my way! 🏃‍♂️",
  ),
  Conversation(
    deliveredTime: "Today, 11:00 am",
    isRecieved: true,
    message: "Thanks for the delicious pancakes, Mom! 😋",
  ),
  Conversation(
    deliveredTime: "Today, 11:05 am",
    isRecieved: false,
    message: "You're welcome, dear! Enjoyed having you over. 😊",
  ),
  Conversation(
    deliveredTime: "Today, 11:10 am",
    isRecieved: true,
    message: "It's always fun to be home! ❤️",
  ),
  // Double messages with emojis
  Conversation(
    deliveredTime: "Today, 12:00 pm",
    isRecieved: true,
    message: "Hey sis! Long time no see. 👋🤗",
  ),
  Conversation(
    deliveredTime: "Today, 12:00 pm",
    isRecieved: true,
    message: "How have you been? 🤔",
  ),
  Conversation(
    deliveredTime: "Today, 12:01 pm",
    isRecieved: false,
    message: "Hey bro! I know, been busy. 😅",
  ),
  Conversation(
    deliveredTime: "Today, 12:01 pm",
    isRecieved: false,
    message: "But I'm good! How about you? 😊",
  ),
  // Single-word messages with emojis
  Conversation(
    deliveredTime: "Today, 1:00 pm",
    isRecieved: true,
    message: "Beach? 🏖️",
  ),
  Conversation(
    deliveredTime: "Today, 1:01 pm",
    isRecieved: false,
    message: "Yasss! 🙌",
  ),
  Conversation(
    deliveredTime: "Today, 1:05 pm",
    isRecieved: true,
    message: "🏄‍♂️🍹",
  ),
  Conversation(
    deliveredTime: "Today, 1:10 pm",
    isRecieved: false,
    message: "🎉🎊",
  ),
  // Longer message with emojis
  Conversation(
    deliveredTime: "Today, 2:00 pm",
    isRecieved: true,
    message:
        "Hey everyone, I just wanted to say how grateful I am to have such an amazing family. ❤️ You all mean the world to me and make every day brighter. 🌟 Love you all! 🤗",
  ),
  Conversation(
    deliveredTime: "Today, 2:05 pm",
    isRecieved: false,
    message: "Aww, that's so sweet! We love you too! 🥰",
  ),
];

final sampleConversation3 = [
  Conversation(
    deliveredTime: "Today, 9:00 am",
    isRecieved: true,
    message: "Good morning John, hope you're doing well?",
  ),
  Conversation(
    deliveredTime: "Today, 9:05 am",
    isRecieved: false,
    message: "Good morning! Yes, I'm doing great. How about you?",
  ),
  Conversation(
    deliveredTime: "Today, 9:10 am",
    isRecieved: true,
    message:
        "I'm doing well too, thanks. I wanted to discuss the progress of our current project. Could we set up a meeting sometime this week to go over the details?",
  ),
  Conversation(
    deliveredTime: "Today, 9:15 am",
    isRecieved: false,
    message:
        "Of course, I'd be happy to discuss the project. How about we schedule a meeting on Thursday at 3:00 pm? Will that work for you?",
  ),
  Conversation(
    deliveredTime: "Today, 9:25 am",
    isRecieved: true,
    message: "Thursday at 3:00 pm sounds good to me. See you then!",
  ),
  Conversation(
    deliveredTime: "Today, 9:30 am",
    isRecieved: false,
    message:
        "Perfect! I've added the meeting to our calendar. Before we meet, I'd like to share some preliminary findings from the recent market research. The data looks promising, and I believe it will help us make informed decisions during the meeting.",
  ),
  Conversation(
    deliveredTime: "Today, 9:35 am",
    isRecieved: true,
    message:
        "That's great news! Please send over the findings when you get a chance. I'm eager to review them before the meeting.",
  ),
  // Short message
  Conversation(
    deliveredTime: "Today, 9:40 am",
    isRecieved: false,
    message: "Will do! I'll send them to you shortly.",
  ),
  // Long message
  Conversation(
    deliveredTime: "Today, 9:50 am",
    isRecieved: true,
    message:
        "Thank you, John. In addition to the market research, I've also been looking into potential partnerships that could enhance our project's reach. I've compiled a list of companies in the same industry that might be interested in collaborating. It's essential to explore these opportunities to stay ahead of the competition and offer our clients the best possible solutions.",
  ),
  // Short message
  Conversation(
    deliveredTime: "Today, 9:55 am",
    isRecieved: false,
    message:
        "Impressive work, Peter! Your dedication to the project is commendable. I'm looking forward to our meeting to discuss these insights in detail.",
  ),
  // Long message
  Conversation(
    deliveredTime: "Today, 10:05 am",
    isRecieved: true,
    message:
        "Thank you, John. I strongly believe that by leveraging our team's skills and seeking strategic partnerships, we can deliver exceptional results for our clients. As we discuss the project during the meeting, I'll also highlight the potential challenges we might face and suggest ways to mitigate them. It's crucial to have a contingency plan in place to ensure a smooth execution.",
  ),
  // Short message
  Conversation(
    deliveredTime: "Today, 10:10 am",
    isRecieved: false,
    message:
        "Agreed! Addressing potential challenges in advance is essential for a successful project. I appreciate your thorough approach, Peter.",
  ),
];
