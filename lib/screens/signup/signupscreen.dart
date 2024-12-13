import 'package:flutter/material.dart';
import 'package:instaclone/Widgets/uihelper.dart';
import 'package:instaclone/screens/login/login.dart';

// ignore: must_be_immutable
class Signup extends StatelessWidget{
  // const Signup({super.key});

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();

  Signup({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UIHelper.CustomImage(imgURL: 'InstagramLogo.png'),
          const SizedBox(height: 30,),
          UIHelper.CustomTextField(controller: email, text: 'Email', toHide: false),
          const SizedBox(height: 10,),
          UIHelper.CustomTextField(controller: password, text: 'Password', toHide: true),
          const SizedBox(height: 10,),
          UIHelper.CustomTextField(controller: username, text: 'Username', toHide: false),
          const SizedBox(height: 30,),
          UIHelper.CustomMainButton(callback: (){}, buttoname: 'Sign up'),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?' , style: TextStyle(color: Colors.grey, fontSize: 15),),
              UIHelper.CustomButton(text: 'Sign in', callback: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
              })
            ],
          )
        ],
      ),
      )
    );
  }
}