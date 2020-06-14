import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animated_background/animated_background.dart';
import 'package:b_chat/component/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
//  @override
//  void initState(){
//    super.initState();
//
//    controller = AnimationController(
//      duration: Duration(seconds: 1),
//      vsync: this,
//    );
//
//    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
//    controller.forward();
//
//    animation.addStatusListener((status){
//      if(status == AnimationStatus.completed){
//        controller.reverse(from: 1.0);
//      } else if (status == AnimationStatus.dismissed){
//        controller.forward();
//      }
//    });
//
//    controller.addListener((){
//      setState(() {});
//    }
//    );
//  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options: ParticleOptions(
            particleCount: 300,
            spawnMinSpeed: 40,
            spawnMaxSpeed: 100,
            baseColor: Color(0x00c09f3b),
          ),
        ),
        vsync: this,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset(
                      'images/logo.png',
                    ),
                    height: 100.0,
                  ),
                ),
              ),
              SizedBox(
                height: 28.0,
              ),
              Center(
                child: TypewriterAnimatedTextKit(
                  text: ['BrodBill Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              RoundedButton(
                title: 'Login',
                color: Colors.lightBlueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                title: 'Register',
                color: Colors.blueAccent,
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


