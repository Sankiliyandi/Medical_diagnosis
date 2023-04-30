import 'dart:io';
import 'package:image_picker/image_picker.dart';


Future pickimage(ImageSource imageSource) async{
  final image= await ImagePicker().pickImage(source: imageSource);
  if (image==Null) return;
  final imgTemp=File(image!.path);
  
}