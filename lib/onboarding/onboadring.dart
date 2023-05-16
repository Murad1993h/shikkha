
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shikkha/route/route.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';


//import 'onboarding_contents.dart';

class Onbordings extends StatefulWidget {
  @override
  _OnbordingsState createState() => _OnbordingsState();
}

class _OnbordingsState extends State<Onbordings> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      //Image.asset('assets/profile/img_1.png'),
                      /* SvgPicture.asset(
                        contents[i].image,
                        height: 300,
                      ),*/
                      Image.asset(
                        contents[i].image,
                        height: 300,
                      ),
                      Text(
                        contents[i].title,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        contents[i].discription,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          //fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                    (index) => buildDot(index, context),
              ),
            ),
          ),
          SizedBox(height: 20,),

        /*  SwipeableButtonView(

            buttonText: 'SLIDE TO NEXT',
            buttonWidget: Container(
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              ),
            ),
            activeColor: Color(0xFF009C41),
           isActive: isFinished,
            isFinished: isFinished,

            onWaitingProcess: () {
              Future.delayed(Duration(seconds: 2), ()=> Get.toNamed(login) ,
              );
            },
            onFinish: () {},

          ),*/


          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: ElevatedButton(
              onPressed: () => Get.toNamed(userselect),
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
                  Text('Next'.tr),



                  // Add some spacing between the icon and text
                ],
              ),
            ),
          ),


          /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: (){},
                // onPressed: () => Get.toNamed(login),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black12,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Skip'.tr),

                     SizedBox(width: 5),
                    Icon(
                      Icons.navigate_next_outlined,
                      size: 30,
                    ),
                    // Add some spacing between the icon and text
                  ],
                ),
              ),
              ElevatedButton(
                //onPressed: (){},
                onPressed: () => Get.toNamed(userselect),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(

                   // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Next'.tr),

                      SizedBox(width: 5),
                      Icon(
                        Icons.navigate_next_outlined,
                        size: 30,
                      ),
                      // Add some spacing between the icon and text
                    ],
                  ),
                ),
              ),


            ],
          ),*/
          SizedBox(height: 30,),







        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return
      Container(
        height: 10,
        width: currentIndex == index ? 25 : 10,
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.purple,
        ),
      );
  }

}

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'School management'.tr,

      image: 'assets/profile/Group 2.png',
      discription: "A platform where you can mane your school. Make your school digital".tr),
  UnbordingContent(
      title: 'Track progress of your child'.tr,
      image: ('assets/profile/Group 3 (1).png'),
      discription: "Shikkha helps you to track progress of you child so the can improve quickly".tr),

  UnbordingContent(
      title: 'One step forward with shikkha'.tr,
      image: ('assets/profile/Group 4.png'),
      discription: "Make your school digital and study more interesting".tr),
];
