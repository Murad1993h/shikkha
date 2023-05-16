import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../route/route.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(

                children: [
                  Image.asset(
                    'assets/userselect/Mathematics-bro 1.png',
                    height: 200, // Height of the image

                  ),

                  Text("Log In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("please enter the detail belwo to continue",style: (TextStyle(color: Colors.black38)),),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Email",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                    ),
                    /*controller: _nameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value;
                    },*/
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Password",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple)),
                    ),
                    obscureText: true,

                    /*controller: _nameController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _name = value;
                    },*/
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Forget password?",style: TextStyle(color: Colors.deepPurple),)),
                    ],
                  ),
                  SizedBox(height: 100,),


                  Padding(
                    padding: const EdgeInsets.only(left: 50,right: 50),
                    child: ElevatedButton(
                      onPressed: () => Get.toNamed(signin),
                      //onPressed: () => Get.toNamed(login),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Log in'.tr),

                          // Add some spacing between the icon and text
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Dont have an account?"),
                    TextButton(onPressed: (){}, child: Text("Sign in",style: TextStyle(color: Colors.deepPurple),))


                  ],),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
