import 'package:flutter/material.dart';

class UIHelper{
  // ignore: non_constant_identifier_names
  static CustomTextField({required TextEditingController controller , required String text , required bool toHide}){
    
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color : const Color(0XFF121212),
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(padding: const EdgeInsets.only(left: 15),
      child: TextField(
      controller: controller,
      obscureText: toHide,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: const TextStyle(fontSize: 14, 
        fontWeight: FontWeight.normal , 
        color: Colors.white),
      ),
    ),
      )
    );
  }


  // ignore: non_constant_identifier_names
  static CustomImage({required String imgURL}){
    return Image.asset("assets/images/$imgURL");
  }

  // ignore: non_constant_identifier_names
  static CustomButton({required String text , required VoidCallback callback}){
    return TextButton(onPressed: (){
      callback();
    }, child: Text(text , style: const TextStyle(fontSize: 12 , color: Colors.blueAccent),));
  }

  // ignore: non_constant_identifier_names
  static CustomMainButton({required VoidCallback callback , required String buttoname}){
    return SizedBox(
      height: 50,
      width: 343,
      child: ElevatedButton(onPressed: (){
        callback();
      },
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0XFF3797EF), shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      )),
       child: Center(child: Text(buttoname, style: const TextStyle(fontSize: 14, color: Colors.white),)),)
    );
  }
}