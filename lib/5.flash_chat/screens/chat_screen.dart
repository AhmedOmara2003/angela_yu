// import 'package:angela_yu/5.flash_chat/components/message_bubble.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class ChatScreen extends StatefulWidget {
//   static const String id = 'chat_screen';
//
//   const ChatScreen({super.key});
//
//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final _auth = FirebaseAuth.instance;
//   final _firestore = FirebaseFirestore.instance;
//   User? loggedIn;
//   var textController = TextEditingController();
//
//   List messages = [];
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     getUser();
//   }
//
//   void getUser() async {
//     try {
//       final user = await _auth.currentUser;
//       if (user != null) {
//         //setState(() {});
//         loggedIn = user;
//         print(loggedIn!.uid);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   // Future<void> getMessages() async {
//   //   // final messages = await _firestore.collection('messages').get();
//   //   // for (var message in messages.docs) {
//   //   //   print(message.data());
//   //   // }
//   //   await _firestore.collection('messages').snapshots().listen((value) {
//   //     value.docs.forEach((element) {
//   //       messages.add(element.data());
//   //     });
//   //     print(messages);
//   //   });
//   // }
//
//   getStreamMessages() async {
//     final snapshots = _firestore.collection('messages').snapshots();
//     await for (var snapshot in snapshots) {
//       for (var message in snapshot.docs) {
//         print(message.data()['text']);
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Hero(
//               tag: 'flash',
//               child: Image(
//                 image: AssetImage('images/thunder.png'),
//                 height: 25.0,
//               ),
//             ),
//             Text(
//               'Chat',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//         automaticallyImplyLeading: false,
//         actions: [
//           IconButton(
//               onPressed: () {
//                 _auth.signOut();
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                 Icons.close,
//                 color: Colors.white,
//               ))
//         ],
//       ),
//       body: Column(
//         children: [
//           StreamBuilder(
//             stream: _firestore.collection('messages').snapshots(),
//             builder: (context, snapshot) {
//               if (!snapshot.hasData) {
//                 return const Column(
//                   children: [
//                     CircularProgressIndicator(color: Colors.blue,),
//                     Spacer()
//                   ],
//                 );
//               }
//               List<Widget> finalWidget = [];
//               final messages = snapshot.data!.docs.reversed;
//               for (var message in messages) {
//                 final messageText = message.data()['text'];
//                 final messageSender = message.data()['sender'];
//                 final finalText = MessageBubble(
//                   messageSender: messageSender,
//                   messageText: messageText,
//                   isMe: loggedIn!.email==messageSender,
//                 );
//                 finalWidget.add(finalText);
//               }
//
//               return Expanded(
//                 child: ListView(
//                   reverse: true,
//                   children: finalWidget,
//
//                 ),
//
//               );
//             },
//           ),
//           Container(
//             margin:
//                 const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     controller: textController,
//                     decoration: const InputDecoration(
//                         hintText: 'Enter your message...',
//                         border: InputBorder.none),
//                   ),
//                 ),
//                 MaterialButton(
//                   color: Colors.blue,
//                   onPressed: () async {
//                     try {
//                       await _firestore.collection('messages').add({
//                         'text': textController.text,
//                         'sender': loggedIn!.email,
//                       });
//                       textController.clear();
//                     } catch (e) {
//                       print(e);
//                     }
//                   },
//                   child: const Text(
//                     'Send',
//                     style: TextStyle(
//                       color: Colors.white,
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
