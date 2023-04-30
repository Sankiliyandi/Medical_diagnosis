import 'package:flutter/material.dart';
import 'package:medics/constant.dart';
import 'package:medics/Auth_Screens/form_field.dart';
import 'package:get/get.dart';


class Signin extends StatefulWidget {
  const Signin({ Key? key }) : super(key: key);

  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
   TextEditingController mController= TextEditingController();
    TextEditingController kgController= TextEditingController();
     TextEditingController bgController= TextEditingController();
      TextEditingController dobController= TextEditingController();
       TextEditingController nameController= TextEditingController();

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
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new,color: primaryColor,)),
        ),
        title:const Text("Create a health profile",style: TextStyle(color: Colors.white),),
        centerTitle: true,
       
         elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
          width: double.infinity,
          height: 160,
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                             const SizedBox(
                               height: 15,
                             ),
                          const    Text("Enter first name & last name:",style: TextStyle(color: Colors.black),),
                               const SizedBox(
                                 height: 10,
                               ),
                                 Textfield(controller: emailController,
                          // icon:Icon(Icons.visibility_outlined,color: primaryColor,),
                          ),
                               const SizedBox(
                               height: 20,
                             ),
                         const    Text("Enter email id:",style: TextStyle(color: Colors.black),),
                             const SizedBox(
                               height: 10,
                             ),
                           Textfield(controller: emailController,
                           icon: Icon(Icons.email_outlined,color: primaryColor,),),
                            const SizedBox(
                               height: 20,
                             ),
                           const    Text("Enter password:",style: TextStyle(color: Colors.black),),
                               const SizedBox(
                                 height: 10,
                               ),
                                 Textfield(controller: emailController,
                           icon:Icon(Icons.visibility_outlined,color: primaryColor,),),
                               const SizedBox(
                               height: 20,
                             ),
                              
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                  const   Text("Enter age:",style: TextStyle(color: Colors.black),),
                                      const SizedBox(
                                 height: 10,
                               ),
                                 Container(
                                            margin:const EdgeInsets.only(right: 1),
                                          width: 140,
                                          child: Textfield(controller: emailController,
                                                                 ),
                                        ),
                                   ],
                                 ),
                                       Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                   const  Text("Enter gender:",style: TextStyle(color: Colors.black),),
                                      const SizedBox(
                                 height: 10,
                               ),
                                 Container(
                                            margin:const EdgeInsets.only(left: 1),
                                          width: 140,
                                          child: Textfield(controller: emailController,
                                                                   icon:Icon(Icons.arrow_drop_down,color: primaryColor,),),
                                        ),
                                   ],
                                 ),
                                    
                               ],
                             ),
                              const SizedBox(
                                height: 20,
                              ),
                              const   Text("Enter date of birth:",style: TextStyle(color: Colors.black),),
                               const SizedBox(
                                 height: 10,
                               ),
                          //        Textfield(controller: dobController,
                          //  icon:Icon(Icons.calendar_month_outlined,color: primaryColor,),
                          //  ontap: () async{
                          //      DateTime? pickedDate=await showDatePicker(context: context,
                          //       initialDate: DateTime.now(),
                          //       firstDate: DateTime(1900),
                          //       lastDate: DateTime(2110));
                          //       if (pickedDate!=null) {
                          //           setState(() {
                          //         dobController.text=pickedDate.day.toString()+'-'+pickedDate.month.toString()+'-'+pickedDate.year.toString();
                          //       });
                          //        showDatePicker(context: context,
                          //       initialDate: DateTime.now(),
                          //       firstDate: DateTime(1900),
                          //       lastDate: DateTime(2110));
                          //       }
                              
                          //  },
                          //  ),
                           TextField(
                             controller: dobController,
                             decoration: InputDecoration(
                               suffixIcon:Icon(Icons.calendar_month_outlined,color: primaryColor,),
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
                             onTap:() async{
                               DateTime? pickedDate=await showDatePicker(context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2110));
                                if (pickedDate!=null) {
                                    setState(() {
                                  dobController.text=pickedDate.day.toString()+'-'+pickedDate.month.toString()+'-'+pickedDate.year.toString();
                                });
                               
                                }
                              
                           },
                           ),
                             const SizedBox(
                               height: 20,
                             ),
                              Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                               const      Text("Enter wieght(kg):",style: TextStyle(color: Colors.black),),
                                      const SizedBox(
                                 height: 10,
                               ),
                                 Container(
                                          margin:const EdgeInsets.only(right: 1),
                                          width: 140,
                                          child: Textfield(controller: kgController,
                                                                 ),
                                        ),
                                   ],
                                 ),
                                       Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                   const  Text("Enter height(m):",style: TextStyle(color: Colors.black),),
                                      const SizedBox(
                                 height: 10,
                               ),
                                 Container(
                                     margin:const EdgeInsets.only(left: 1),
                                          width: 140,
                                          child: Textfield(controller: mController,
                                                                  ),
                                        ),
                                   ],
                                 ),
                                    
                               ],
                             ),
                            
                             const SizedBox(
                               height: 20,
                             ),
                              const  Text("Enter blood group:",style: TextStyle(color: Colors.black),),
                               const SizedBox(
                                 height: 10,
                               ),
                                 Textfield(controller: bgController,
                           icon:Icon(Icons.arrow_drop_down,color: primaryColor,),),
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
                                 onPressed: (){},
                               child:const Text("Create profile",style: TextStyle(color: Colors.white),),),
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
                                 border:const Border(
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
                                 const  Text("sigin with google")
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
                               const  Text("Already have an account?"),
                                 TextButton(onPressed: (){
                                     Get.back();
                                 },
                                  child: Text("login",
                                  style: TextStyle(color: primaryColor),))
                               ],
                             )
                        ],
                      ),
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