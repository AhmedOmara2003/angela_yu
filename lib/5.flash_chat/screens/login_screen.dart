// import 'package:angela_yu/5.flash_chat/screens/chat_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import '../components/rounded_button.dart';
// import '../components/textFormField.dart';
//
// // ignore: must_be_immutable
// class LoginScreen extends StatefulWidget {
//   static const String id = 'login_screen';
//
//   const LoginScreen({super.key});
//
//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   var email = TextEditingController();
//   var password = TextEditingController();
//   bool isSpinnerShown = false;
//   final _auth = FirebaseAuth.instance;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ModalProgressHUD(
//       inAsyncCall: isSpinnerShown,
//
//       progressIndicator: CircularProgressIndicator(
//         color: Colors.blue[400]!,
//       ),
//       child: Center(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Hero(
//                     tag: 'flash',
//                     child: Image(
//                       image: AssetImage('images/thunder.png'),
//                       height: 200.0,
//                     )),
//                 Container(
//                   margin: const EdgeInsets.only(top: 60.0, bottom: 20.0),
//                   child: Text(
//                     'Log In',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 30.0,
//                         color: Colors.blue[400]!),
//                   ),
//                 ),
//                 CustomTextFormFiled(
//                   controller: email,
//                   text: 'Email',
//                   prefixIcon: const Icon(Icons.email),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 50.0, top: 10.0),
//                   child: CustomTextFormFiled(
//                     controller: password,
//                     text: 'Password',
//                     prefixIcon: const Icon(Icons.password),
//                     isObscureText: true,
//                   ),
//                 ),
//                 RoundedButton(
//                   onPressed: () async {
//                     setState(() {
//                       isSpinnerShown = true;
//                     });
//                     try {
//                       final user = await _auth.signInWithEmailAndPassword(
//                           email: email.text, password: password.text);
//                       if (user != null) {
//                         Navigator.pushNamed(context, ChatScreen.id);
//                       }
//                       setState(() {
//                         isSpinnerShown=false;
//                       });
//                     } catch (e) {
//                       print(e);
//                     }
//                   },
//                   color: Colors.blue[400]!,
//                   text: 'Log In',
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }
// }
