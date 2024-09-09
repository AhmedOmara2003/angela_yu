import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../5.flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'Welcome_Screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationFun();
  }

  void animationFun() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    //animation=CurvedAnimation(parent: controller!, curve: Curves.bounceOut);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);
    controller!.forward();
    controller!.addListener(() {
      setState(() {
        controller!.value;
      });
      //  print(controller!.value);
    });
    animation!.addListener(() {
      setState(() {
        animation!.value;
      });
      print(animation!.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation!.value,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                    tag: 'flash',
                    child: Image(
                      image: AssetImage('images/thunder.png'),
                      height: controller!.value * 60,
                    )),
                SizedBox(
                  width: 10.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 40.0,
                      ),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            RoundedButton(
                text: 'Log In',
                color: Colors.blue[400]!,
                onPressed: () {
                  //Navigator.pushNamed(context, LoginScreen.id);
                }),
            const SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              color: Colors.blue[800]!,
              text: 'Register',
              onPressed: () {
                //Navigator.pushNamed(context, RegisterScreen.id);
              },
            )
          ],
        ),
      ),
    );
  }
}
