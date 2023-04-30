import 'package:flutter/material.dart';
import 'package:medics/constant.dart';



class Textfield extends StatefulWidget {
   final TextEditingController controller;
   final Icon? icon;
  final  Function? ontap;
  const Textfield({ Key? key,
  required  this.controller,
  this.icon,
  this.ontap,
  
   }) : super(key: key);

  @override
  _TextfieldState createState() => _TextfieldState();
}

class _TextfieldState extends State<Textfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
                             controller: widget.controller,
                             decoration: InputDecoration(
                               suffixIcon: widget.icon,
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
                             onTap:(){
                               widget.ontap;
                             },
                           );
  }
}