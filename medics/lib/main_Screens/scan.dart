import 'package:flutter/material.dart';
import 'package:medics/constant.dart';
import 'package:get/get.dart';
import 'package:medics/Auth_Screens/signin.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:medics/main_Screens/scan_function.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({ Key? key }) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     pickimage(ImageSource.camera);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IconButton(onPressed: (){
        pickimage(ImageSource.gallery);
      }, icon: Icon(Icons.upload_file_rounded,color: primaryColor,)),
    );
  }
}