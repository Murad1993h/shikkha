import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../route/route.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column
          (children: [
          Center(
            child:
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child:
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 130,),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF8B00AD), // Blue
                              Color(0xFFFF27E9
                              ), // Red
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                         // color: Colors.purple,
                        ),
                        height: 250,
                        width: 250,
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Starter pack",
                                    style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text("* 20 Students",style: TextStyle(color: Colors.white),),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("* 20 Teacher",style: TextStyle(color: Colors.white),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("* 20 SMS",style: TextStyle(color: Colors.white),),
                                  ),

                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 25),
                              child: ElevatedButton(onPressed: () => Get.toNamed(dashboard),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                    ),


                                    minimumSize: MaterialStateProperty.all<Size>(
                                      Size(200, 40),
                                    ),

                                  ),

                                  child: Text("Start",style: TextStyle(color: Colors.purple),)),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Center(
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.white,


                          borderRadius: BorderRadius.all( Radius.circular(50.0)),
                          border: Border.all(
                            color: Colors.purple,
                            width: 4.0,
                          ),

                        ),
                        child: Center(child: Text("Free",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Center(
                      child: Text("The best work solution\nfor best price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ),
                  ),


                ],
              ),
            ),
          ),
































          Center(
            child:
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70,),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF8B00AD), // Blue
                            Color(0xFFFF27E9
                            ), // Red
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 250,
                      width: 250,
                      child: Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Basic",
                                  style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text("* 20 Students",style: TextStyle(color: Colors.white),),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("* 20 Teacher",style: TextStyle(color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text("* 20 SMS",style: TextStyle(color: Colors.white),),
                                ),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: ElevatedButton(onPressed: () => Get.toNamed(homescreen),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),


                                  minimumSize: MaterialStateProperty.all<Size>(
                                    Size(200, 40),
                                  ),

                                ),

                                child: Text("Start",style: TextStyle(color: Colors.purple),)),
                          ),


                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(bottom: 10,top: 20),
                  child: Center(
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Colors.white,


                        borderRadius: BorderRadius.all( Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.purple,
                          width: 4.0,
                        ),

                      ),
                      child: Center(child: Text("2500/BDT",style: TextStyle(color: Colors.purple,fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),


              ],
            ),
          ),

        ],),
      ),

    );
  }
}
