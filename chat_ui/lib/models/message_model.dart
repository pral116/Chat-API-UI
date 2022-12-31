import 'user_model.dart';

class Message{
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  final User sender;

  Message({
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
    required this.sender
});
}

// Users
final User currUser = User(
  id: 0, name: 'Curr User', imageUrl: 'images/current.png',
);

final User greg = User(
  id: 1, name: 'Greg', imageUrl: 'images/greg.png',
);

final User james = User(
  id: 2, name: 'James', imageUrl: 'images/james.png',
);

final User sam = User(
  id: 2, name: 'sam', imageUrl: 'images/sam.png',
);

// Favorites
List<User> favorites = [
  greg, james, sam, greg, james, sam,
];

// Messages on home screen
List<Message> chats = [
  Message(time: '8:0', text: 'Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: false, sender: james),
  Message(time: '8:0', text: 'Hi', isLiked: true, unread: true, sender: greg),
  Message(time: '8:0', text: 'Hi', isLiked: false, unread: true, sender: sam),
  Message(time: '8:0', text: 'Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: false, sender: james),
  Message(time: '8:0', text: 'Hi', isLiked: true, unread: true, sender: greg),
  Message(time: '8:0', text: 'Hi', isLiked: false, unread: true, sender: sam),
  Message(time: '8:0', text: 'Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: false, sender: james),
  Message(time: '8:0', text: 'Hi', isLiked: true, unread: true, sender: greg),
  Message(time: '8:0', text: 'Hi', isLiked: false, unread: true, sender: sam),
  Message(time: '8:0', text: 'Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: false, sender: james),
  Message(time: '8:0', text: 'Hi', isLiked: true, unread: true, sender: greg),
  Message(time: '8:0', text: 'Hi', isLiked: false, unread: true, sender: sam),
  Message(time: '8:0', text: 'Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: false, sender: james),
  Message(time: '8:0', text: 'Hi', isLiked: true, unread: true, sender: greg),
  Message(time: '8:0', text: 'Hi', isLiked: false, unread: true, sender: sam),
];

// Messages in chat screen
List<Message> message = [
  Message(time: '8:00', text: 'HiHi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef Hi ncjds chdhcd chwiecj wcwd fwef vwiecj wcwd fwef', isLiked: false, unread: true, sender: james),
  Message(time: '8:01', text: 'Hello', isLiked: false, unread: true, sender: currUser),
  Message(time: '8:01', text: 'how are you?', isLiked: false, unread: true, sender: james),
  Message(time: '8:02', text: 'Fine! what about you?', isLiked: false, unread: true, sender: currUser),
  Message(time: '8:03', text: 'All good', isLiked: false, unread: true, sender: james),
  Message(time: '8:03', text: 'Where are you?', isLiked: false, unread: true, sender: james),
];