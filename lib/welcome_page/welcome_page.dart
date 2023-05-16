import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shikkha/route/route.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/signin/Thesis-rafiki 1.png',
             // height: 300, // Height of the image
            ),
            Text("A Few more steps left ",style: TextStyle(fontSize: 20),),

            SizedBox(height: 15,),
            Text("We need some more information      \n               of your to continue ",style: TextStyle(color: Colors.black38),),


            const SizedBox(
              height: 35,
            ),
            Center(
              child:
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding:
                  EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                onPressed: () => Get.toNamed(studentteacher),
                child:
                Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.bold),

                ),


              ),
            ),
          ],
        ),
      ),
    );
  }
}
