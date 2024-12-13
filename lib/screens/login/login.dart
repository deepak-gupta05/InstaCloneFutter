import 'package:flutter/material.dart';
import 'package:instaclone/Widgets/uihelper.dart';
import 'package:instaclone/screens/signup/signupscreen.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget{

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UIHelper.CustomImage(imgURL: 'InstagramLogo.png'),
          const SizedBox(height: 20,),
          UIHelper.CustomTextField(controller: email, text: "Email", toHide: false),
          const SizedBox(height: 15,),
          UIHelper.CustomTextField(controller: password, text: "Password", toHide: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: const EdgeInsets.only(right: 20), child:  UIHelper.CustomButton(text: "Forgot Password?", callback: (){}),)
            ],
          ),
          const SizedBox(height: 30,),
          UIHelper.CustomMainButton(callback: (){}, buttoname: "Log In"),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UIHelper.CustomImage(imgURL: 'Icon.png'),
              UIHelper.CustomButton(text: "Log in with Facebook", callback: (){})
            ],
          ),
          const SizedBox(height: 10 ,),
          const Text('OR' , style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?" , style: TextStyle(fontSize: 14, color: Colors.white),),
              UIHelper.CustomButton(text: 'Sign Up', callback: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Signup()));
              })
            ],
          )
          
        ],
       ),
       ),
    );
  }
  
}