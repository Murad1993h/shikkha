import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shikkha/route/route.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({Key? key}) : super(key: key);

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {

 /* int selectedButtonIndex = 0;

  List<Color> buttonColors = [
    Colors.green, // Selected color
    Colors.blue,
    Colors.red,
  ];*/
 // int selectedButtonIndex = 0;
  bool isSelected0 = false;
  bool isSelected1 = false;
  bool isSelected2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "you are",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 // for (FilterStatus filterStatus in FilterStatus.values)
                  GestureDetector(


                    onTap: (){

                      setState(() {
                        isSelected0 = !isSelected0;

                        

                      });
                     /* setState(() {
                        if (filterStatus == FilterStatus.Upcoming) {
                          status = FilterStatus.Upcoming;
                          _alignment = Alignment.centerLeft;
                        } else if (filterStatus ==
                            FilterStatus.Complete) {
                          status = FilterStatus.Complete;
                          _alignment = Alignment.center;
                        } else if (filterStatus ==
                            FilterStatus.Cancel) {
                          status = FilterStatus.Cancel;
                          _alignment = Alignment.centerRight;
                        }
                      });*/
                    },
                    child: Container(
                      decoration: BoxDecoration(

                        color: isSelected0 ? Colors.purple : Colors.black12, // Background color
                        borderRadius:
                            BorderRadius.circular(10.0), // Rounded border radius
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/userselect/Mathematics-bro 1.png',
                          ),
                          Text("Teacher"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  GestureDetector(
                    onTap: (){

                      setState(() {
                        isSelected1 = !isSelected1;

                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected1 ? Colors.purple : Colors.black12, // Background color
                        borderRadius:
                        BorderRadius.circular(10.0), // Rounded border radius
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/userselect/Learning-cuate 1.png',
                          ),
                          Text("Student"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),








              GestureDetector(

                onTap: (){

                  setState(() {
                    isSelected2 = !isSelected2;




                  });





                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12, // Background color

                    border: Border.all(
                      color: isSelected2 ? Colors.purple : Colors.black12, // Background color
                      width: 2.0,
                    ),
                    borderRadius:
                    BorderRadius.circular(10.0), // Rounded border radius
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/userselect/Seminar-bro 1.png',
                      ),
                      Text("Institute"),
                    ],
                  ),
                ),
              ),











              SizedBox(height: 200,),






              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child:
                ElevatedButton(
                  onPressed: () => Get.toNamed(login),
                  //onPressed: () => Get.toNamed(login),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Continue'.tr),

                      // Add some spacing between the icon and text
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







