import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:medics/Auth_Screens/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        backgroundColor: Colors.white,
        duration:8000,
        // splash: Container(
        //   width: double.infinity,
        //   height: 300,
        //   child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //     children:[ 
           splash:  Image.asset('assets/medics.png'),
           splashIconSize: 280
        //     ]
        //     ,
        //   ),
        // )
        ,
        nextScreen: const Login(),
        splashTransition: SplashTransition.fadeTransition,
        
      )
    ;
  }
}
