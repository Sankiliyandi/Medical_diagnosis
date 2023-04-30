import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medics/constant.dart';
//import 'package:medics/Auth_Screens/login.dart';
import 'package:get/get.dart';
import 'package:medics/splash_Screen/splash_screen.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
SystemUiOverlayStyle(
  statusBarColor: primaryColor,
  statusBarBrightness: Brightness.light,
  
)
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Medics',
      theme: ThemeData(
        primaryColor: primaryColor,
        primarySwatch:  primaryColor,   
                                                                                                                                                                                                     
      ),
      home:const SplashScreen(), //Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}