import 'package:flutter/material.dart';
import 'package:medics/constant.dart';
import 'package:get/get.dart';
import 'package:medics/Auth_Screens/signin.dart';
//import 'dart:io';
import 'package:image_picker/image_picker.dart';
//import 'package:medics/main_Screens/scan.dart';
import 'package:medics/main_Screens/scan_function.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'dart:convert';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController userController= TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
 final headers = {
    "Authorization": "Token 7734154977e9d697a9b001278db1cb00e5292b7a"
};

  Future postData()async{
          var val=await http.post(Uri.parse("http://127.0.0.1:8000/classUser/"),
          headers: headers,
          body: {
            "username":userController.text.toString(),
            "email":emailController.text.toString(),
            "password":passwordController.text.toString(),
          }
          );
          var jsonData=json.decode(val.body);
          print(jsonData);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 0.0,
        
        leading: Container(
          margin:const EdgeInsets.only(left: 7,top: 7,bottom: 7),
        
          decoration: BoxDecoration(
              color: Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.arrow_back_ios_new,color: primaryColor,)),
        ),
        title:const Text("Login",style: TextStyle(color: Colors.white),),
        centerTitle: true,
       
         elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius:const BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight:Radius.circular(15)
            )
          ),
        ),
        SingleChildScrollView(child:
           Center(
             child:
             
              Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                     //   mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width-40,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                           const SizedBox(
                             height: 15,
                           ),
                             const     Text("Enter user name:",style: TextStyle(color: Colors.black),),
                           const SizedBox(
                             height: 10,
                           ),
                           TextField(
                             controller: userController,
                             decoration: InputDecoration(
                               suffixIcon: Icon(Icons.person_2_outlined,color: primaryColor,),
                               border:const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey
                                ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                color: primaryColor,
                      ),
                    ),
                             ),
                           ),
                          const SizedBox(
                             height: 20,
                           ),
                      const     Text("Enter email id:",style: TextStyle(color: Colors.black),),
                           const SizedBox(
                             height: 10,
                           ),
                           TextField(
                             controller: emailController,
                             decoration: InputDecoration(
                               suffixIcon: Icon(Icons.email_outlined,color: primaryColor,),
                               border:const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey
                                ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                color: primaryColor,
                      ),
                    ),
                             ),
                           ),
                          const SizedBox(
                             height: 20,
                           ),
                           const  Text("Enter password:",style: TextStyle(color: Colors.black),),
                             const SizedBox(
                               height: 10,
                             ),
                            TextField(
                             controller: passwordController,
                             decoration: InputDecoration(
                               suffixIcon: Icon(Icons.visibility_outlined,color: primaryColor,),
                               border:const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey
                                ),
                               ),
                               focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4),
                                borderSide: BorderSide(
                                color: primaryColor,
                      ),
                    ),
                             ),
                           ),
                           const SizedBox(
                             height: 20,
                           ),
                           Container(
                             decoration: BoxDecoration(
                               color: primaryColor,
                               borderRadius: BorderRadius.circular(10)
                             ),
                             child: MaterialButton(
                               minWidth: double.infinity-50,
                               onPressed: (){
                                 //pickimage(ImageSource.camera);
                                //Get.to(ScanScreen());
                                postData();
                               },
                             child:const Text("Login",style: TextStyle(color: Colors.white),),),
                           ),
                             const SizedBox(
                             height: 20,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children:const [
                               Expanded(
                                 child: Divider(
                                   height: 10,
                                   color: Colors.grey,
                                 ),
                               ),
                               Text("OR"),
                               Expanded(
                                 child: Divider(
                                  // height: 10,
                                  color: Colors.grey,
                                 ),
                               )
                             ],
                           ),
                             const SizedBox(
                             height: 20,
                           ),
                           Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               border: Border(
                                 top: BorderSide(
                                   color: Colors.grey
                                 ),
                                 bottom:  BorderSide(
                                   color: Colors.grey
                                 ),
                                 left:  BorderSide(
                                   color: Colors.grey
                                 ),
                                 right:  BorderSide(
                                   color: Colors.grey
                                 )
                               )
                             ),
                             child: MaterialButton(
                                minWidth: double.infinity-50,
                               onPressed: (){},
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset("assets/glogo.png",width: 30,height: 30,),
                                 Text("sigin with google")
                               ],
                             ),
                             ),
                           ),
                            const SizedBox(
                               height: 20,
                             ),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Text("Don't have an account?"),
                                 TextButton(onPressed: (){
                                   Get.to(Signin(),
                                   transition: Transition.rightToLeft);
                                 },
                                  child: Text("signin",style: TextStyle(color: primaryColor),))
                               ],
                             )
                      ],
                    ),
                  ),
                ],
             ),),
           ),
          
        ],
      ),
    );
  }
}