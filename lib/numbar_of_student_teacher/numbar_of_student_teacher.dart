import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shikkha/route/route.dart';

import '../exaampol/doctor.dart';

class StudentTeacher extends StatefulWidget {
  const StudentTeacher({Key? key}) : super(key: key);

  @override
  State<StudentTeacher> createState() => _StudentTeacherState();

}


class _StudentTeacherState extends State<StudentTeacher> {
  
  bool isAactive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
        SingleChildScrollView(
          child:
          Center(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 24,bottom: 10),
                      child: Text("Number of Students\nin your institution",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("1-50",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("50-100",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("100-150",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                      ],),










                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("150-200",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("200-250",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("More then that",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                      ],),







                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 24,bottom: 10),
                      child: Text("Number of Teachers\nin your institution",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("1-50",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("50-100",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("100-150",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                      ],),










                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("150-200",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("200-250",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("More then that",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                      ],),







                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 24,bottom: 10),
                      child: Text("How did you hear about us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("Google",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("Ads",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: InkWell(


                            child: Container(
                              height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width*.280,

                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.purple),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:
                              Center(child: Text("Social Media",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                            ),
                          ),
                        ),

                      ],),










                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("From a friend",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: Text("Other",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height*.05,
                            width: MediaQuery.of(context).size.width*.280,

                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.purple),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                            Center(child: InkWell(
                              onTap: ()=> Get.toNamed(scheduletab),
                                child: Text("Other",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),))),
                          ),
                        ),
                      ],),









                  ],
                ),

























































                SizedBox(height: 50,),
                Center(
                  child: ElevatedButton(
                    onPressed: () => Get.toNamed(price),

                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),


                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 40),
                      ),

                    ),
                    child: Text(
                      'Next',

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
