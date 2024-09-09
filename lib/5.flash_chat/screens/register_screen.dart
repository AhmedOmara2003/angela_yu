// import 'package:angela_yu/5.flash_chat/components/rounded_button.dart';
// import 'package:angela_yu/5.flash_chat/components/textFormField.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import 'chat_screen.dart';
//
// // ignore: must_be_immutable
// class RegisterScreen extends StatefulWidget {
//   static const String id = 'register_screen';
//
//   const RegisterScreen({super.key});
//
//   @override
//   State<RegisterScreen> createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   var name = TextEditingController();
//   var email = TextEditingController();
//   var phone = TextEditingController();
//   var password = TextEditingController();
//   bool isSpinnerShown = false;
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ModalProgressHUD(
//         progressIndicator: CircularProgressIndicator(
//           color: Colors.blue[800]!,
//         ),
//         inAsyncCall: isSpinnerShown,
//         child: Center(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Hero(
//                       tag: 'flash',
//                       child: Image(
//                         image: AssetImage('images/thunder.png'),
//                         height: 200.0,
//                       )),
//                   Container(
//                     margin: const EdgeInsets.only(top: 60.0, bottom: 20.0),
//                     child: Text(
//                       'Register',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 30.0,
//                           color: Colors.blue[800]!),
//                     ),
//                   ),
//                   CustomTextFormFiled(
//                     controller: email,
//                     text: 'Email',
//                     prefixIcon: const Icon(Icons.email),
//                   ),
//                   const SizedBox(
//                     height: 10.0,
//                   ),
//                   CustomTextFormFiled(
//                     controller: password,
//                     text: 'password',
//                     prefixIcon: const Icon(Icons.password),
//                   ),
//                   const SizedBox(
//                     height: 50.0,
//                   ),
//                   RoundedButton(
//                     color: Colors.blue[800]!,
//                     text: 'Register',
//                     onPressed: () async {
//                       setState(() {
//                         isSpinnerShown=true;
//                       });
//                       try {
//                         final user = await _auth.createUserWithEmailAndPassword(
//                             email: email.text, password: password.text);
//                         if (user != null) {
//                           setState(() {
//                             isSpinnerShown=false;
//                           });
//                           Navigator.pushNamed(context, ChatScreen.id);
//                         }
//                       } catch (e) {
//                         print('error is $e');
//                       }
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
