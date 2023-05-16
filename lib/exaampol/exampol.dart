import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:math';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../route/route.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  Color color = Colors.amber;




  bool isFinished = false;
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _radiusAnimation;
  
  
  final List<ChartData> chartData = [
    ChartData('Jan', 60, 1),
    ChartData('Feb', 4, 60),
    ChartData('Mar', 10, 2),
    ChartData('Apr', 40, 60),
    ChartData('May', 10, 20),
    ChartData('Jun', 40, 60),
    ChartData('Jul', 10, 20),
    ChartData('Agu', 40, 60),
    ChartData('Sep', 40, 60),
    ChartData('Oct', 10, 20),
    ChartData('Des', 40, 60),

  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..forward();
    _rotationAnimation = Tween(begin: 0.0, end: 1.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _radiusAnimation = Tween(begin: 450.0, end: 10.0)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: color,

                            borderRadius: const BorderRadius.all(Radius.circular(10))),
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.amber;


                                });
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  color = Colors.blue;

                                });
                              },
                              child: Container(
                                child: Text("dnbvmd"),
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                                height: 100,
                                width: 100,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),

                Center(
                  child: InkWell(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)), //this right here
                              child: Container(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [


                                      Container(
                                        padding: EdgeInsets.only(left: 25,right: 25,top: 20),
                                        child:
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [


                                            Icon(Icons.visibility_off),
                                            GestureDetector(
                                              onTap:(){
                                                setState(() {


                                                });
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                //color: AppColors.blueColorNew,
                                                //margin: EdgeInsets.only(bottom: 20),
                                                width: 100,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Colors.purple,
                                                    border: Border.all(color: Colors.black)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Cancel",
                                                    style: TextStyle(
                                                        fontFamily: "Gilroy-Bold",
                                                        color:Colors.cyan),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            InkWell(
                                              onTap:(){
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                alignment: Alignment.center,
                                                //color: AppColors.blueColorNew,
                                                //margin: EdgeInsets.only(bottom: 20),
                                                width: 100,
                                                height: 32,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(5),
                                                    color: Colors.white,
                                                    border: Border.all(color: Colors.orange,
                                                    )
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(5.0),
                                                  child: Text(
                                                    "Confirm",
                                                    style: TextStyle(
                                                        fontFamily: "Gilroy-Bold",
                                                        color:Colors.orange),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.orange,
                      child: Center(
                        child: Text("Click on",

                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                    ),
                  ),
                ),

                Center(
                  child: Stack(
                    //clipBehavior: Clip.hardEdge,
                    alignment: Alignment.center,
                    children: [
                      Transform.rotate(angle: _rotationAnimation.value + 0.2),
                      Container(
                        width: 225,
                        height: 225,
                        /* decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.circular(_radiusAnimation.value),
                      ),*/
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(_radiusAnimation.value)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF692D94).withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                            ),
                          ],
                          color: Colors.deepPurple[600],
                        ),
                      ),
                      Transform.rotate(angle: _rotationAnimation.value + 0.4),
                      Container(
                        width: 175,
                        height: 175,
                        /* decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.circular(_radiusAnimation.value),
                      ),*/
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(_radiusAnimation.value)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF692D94).withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                            ),
                          ],
                          color: Colors.white,
                        ),
                      ),
                      Transform.rotate(angle: _rotationAnimation.value + 0.6),
                      Container(
                        width: 125,
                        height: 125,
                        /* decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.circular(_radiusAnimation.value),
                      ),*/
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(_radiusAnimation.value)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF692D94).withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                            ),
                          ],
                          color: Colors.white24,
                        ),
                      ),
                      Transform.rotate(angle: _rotationAnimation.value + 0.8),
                      Container(
                        width: 75,
                        height: 75,
                        /* decoration: BoxDecoration(
                        color: Colors.deepPurple[600],
                        borderRadius: BorderRadius.circular(_radiusAnimation.value),
                      ),*/
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(_radiusAnimation.value)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF692D94).withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                            ),
                          ],
                          color: Colors.white10,
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/signin/logo 1.png',
                              height: 200,
                              width: 400,// Height of the image

                            ),
                          ],
                        ),
                      ),




































                     /* Transform.rotate(angle: _rotationAnimation.value + 0.4),
                      Container(
                        width: 175,
                        height: 175,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[400],
                          borderRadius:
                              BorderRadius.circular(_radiusAnimation.value),
                        ),
                      ),
                      Transform.rotate(angle: _rotationAnimation.value + 0.6),
                      Container(
                        width: 125,
                        height: 125,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[200],
                          borderRadius:
                              BorderRadius.circular(_radiusAnimation.value),
                        ),
                      ),

                      Transform.rotate(angle: _rotationAnimation.value + 0.8),
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(_radiusAnimation.value),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xFF692D94).withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                            ),

                          ],
                          color: const Color(0xFF692D94),
                        ),
                      ),
*/



                    ],
                  ),
                ),
                Container(
                  child: SfLinearGauge(
                    isMirrored: false,
                    isAxisInversed: false,
                    markerPointers: [
                      LinearShapePointer(
                        value: 10,
                      ),
                    ],
                    ranges: [
                      LinearGaugeRange(
                        startValue: 0,
                        endValue: 90,
                      ),
                    ],
                    


                  ),
                ),

              Container(
                  child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(minimum: 0, maximum: 150,
                            ranges: <GaugeRange>[
                              GaugeRange(startValue: 0, endValue: 50, color:Colors.green),
                              GaugeRange(startValue: 50,endValue: 100,color: Colors.orange),
                              GaugeRange(startValue: 100,endValue: 150,color: Colors.red)

                   ],
                            pointers: <GaugePointer>[
                              NeedlePointer(value: 1000)],
                            annotations: <GaugeAnnotation>[
                              GaugeAnnotation(widget: Container(child:
                              Text('90.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                                  angle: 90, positionFactor: 0.5
                              )]
                        )])
              ),
                Container(
                    child:
                    LinearPercentIndicator(
                      animation:true,
                      animationDuration: 1000,
                      lineHeight: 40,
                      percent:.3,
                      progressColor:Colors.purple,
                      backgroundColor:Colors.white,
                      center: Text("97/100"),


                    ),
                ),
                ElevatedButton(onPressed: ()=> Get.toNamed(barchartsample7),
                    child: Text("BarChartSample7")),




                Container(
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(), series:[
                      StackedColumnSeries(
                        dataSource: chartData,
                        xValueMapper:(ChartData ch, _) => ch.x,
                        yValueMapper:(ChartData ch, _) => ch.y1,

                       // yValueMapper: (ChartData datum, int index) { 10, 20 },
                      )
                  ]
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


class ChartData{
  final String x;
  final int y1;
  final int y3;
  ChartData(this.x, this.y1, this.y3
  );
}
















