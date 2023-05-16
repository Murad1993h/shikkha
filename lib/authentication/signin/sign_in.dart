import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../route/route.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/signin/logo 1.png',
                height: 200, // Height of the image

              ),
              Text("Sign In",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text("please enter the detail belwo to continue",style: (TextStyle(color: Colors.black38)),),
              SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Institute name",
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
              SizedBox(height: 10,),

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
              SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Phone numbar",
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.purple)),
                ),
                keyboardType: TextInputType.number,

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


              SizedBox(height: 10,),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: "password",
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
              SizedBox(height: 10,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Confirm Password",
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
              SizedBox(height: 20,),



              Padding(
                padding: const EdgeInsets.only(left: 50,right: 50),
                child: ElevatedButton(
                  onPressed: () => Get.toNamed(otp),
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
                      Text('Sign in'.tr),

                      // Add some spacing between the icon and text
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have account?"),
                  TextButton(onPressed: (){}, child: Text("Log in",style: TextStyle(color: Colors.deepPurple),))


                ],),

            ],
          ),
        ),
      ),
    );
  }
}
