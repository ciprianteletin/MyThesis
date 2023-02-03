import 'package:my_thesis/model/chat_user_model.dart';

class Message {
  final ChatUser sender;
  final String time; // In reality, this is a date time object
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final ChatUser currentUser = ChatUser(
  id: 0,
  name: 'Current User',
  imageUrl: 'assets/greg.jpg',
);

final ChatUser todor = ChatUser(
  id: 1,
  name: 'Lect. Dr. Todor Ivascu',
  imageUrl: 'assets/greg.jpg',
);
final ChatUser john = ChatUser(
  id: 2,
  name: 'John',
  imageUrl: 'assets/john.jpg',
);
final ChatUser olivia = ChatUser(
  id: 3,
  name: 'Olivia',
  imageUrl: 'assets/olivia.jpg',
);
final ChatUser sam = ChatUser(
  id: 4,
  name: 'Sam',
  imageUrl: 'assets/sam.jpg',
);
final ChatUser sophia = ChatUser(
  id: 5,
  name: 'Sophia',
  imageUrl: 'assets/sophia.jpg',
);
final ChatUser steven = ChatUser(
  id: 6,
  name: 'Steven',
  imageUrl: 'assets/steven.jpg',
);

List<ChatUser> favorites = [todor, sam, steven, olivia, john];

List<Message> chats = [
  Message(
    sender: todor,
    time: '11:30 AM',
    text: "Hey, what's the status of your thesis? Any burning question?",
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: olivia,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '3:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '12:30 PM',
    text: 'Hey, how\'s it going? What did you do today?',
    isLiked: false,
    unread: false,
  ),
];

List<Message> messages = [
  Message(
    sender: todor,
    time: '4:45 PM',
    text: 'Read the book Concurrency in Practice',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:55 PM',
    text: 'I am facing a concurrency issue',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: todor,
    time: '3:45 PM',
    text: 'What kind of problem do you have?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:30 PM',
    text: 'I am struggling to complete one specific function for my thesis',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: todor,
    time: '2:30 PM',
    text: 'Hey, what\'s the status of your thesis? Any burning question?',
    isLiked: true,
    unread: true,
  ),
];
