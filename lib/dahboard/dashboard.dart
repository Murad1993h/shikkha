import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shikkha/dahboard/draewr/new_drawer.dart';
import 'package:shikkha/route/route.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../exaampol/exampol.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late List<SalesData> _data;

  get chartData => 10;

  void initState() {
    _data = [
      SalesData('Jan', 35),
      SalesData('Feb', 28),
      SalesData('Mar', 34),
      SalesData('Apr', 32),
      SalesData('May', 40),
      SalesData('Jun', 55),
      SalesData('Jul', 38),
    ];
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: InkWell(
          onTap: () {


          },



          child: Icon(
            Icons.menu_rounded,
            color: Colors.purple,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_rounded,
                          color: Colors.purple,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "ABC School & college",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
        drawer: MyDropdown(),




        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Dashboard",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF3C90F1),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "20",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Students",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFF44F4F),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "10,000",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Total due",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFAD38E4),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Upcoming Exam",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF68C330),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "10",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Teachers",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFF3F3F3F),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "15,000",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Cash received",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "(this month)",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFFEDA249),
                        ),
                        child: Column(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "18",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Attendance",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "(per day)",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),











              SfCartesianChart(



                backgroundColor: Colors.white,
                borderWidth: 0, // remove the chart border
                plotAreaBorderWidth: 0,
                primaryXAxis: CategoryAxis(
                  majorGridLines: MajorGridLines(width: 0), // remove the X-axis major grid line
                  minorGridLines: MinorGridLines(width: 0), // remove the X-axis minor grid line
                  axisLine: AxisLine(width: 1), // remove the X-axis line
                ),
                primaryYAxis: NumericAxis(
                  majorGridLines: MajorGridLines(width: 0), // remove the Y-axis major grid line
                  minorGridLines: MinorGridLines(width: 0), // remove the Y-axis minor grid line
                  axisLine: AxisLine(width: 1), // remove the Y-axis line
                ),
                // primaryXAxis: CategoryAxis(),
                series: <CartesianSeries>[
                  ColumnSeries<SalesData, String>(
                    dataSource: _data,
                    xValueMapper: (SalesData sales, _) => sales.year,
                    yValueMapper: (SalesData sales, _) => sales.sales,
                    color: Colors.purple, // change the color here
                    borderRadius: BorderRadius.only( 
                        topRight:Radius.circular(15),topLeft: Radius.circular(15))
                  ),
                ],
              ),
              Container(
                  child: SfCartesianChart(
                    // Initialize category axis
                      primaryXAxis: CategoryAxis(),

                      series: <LineSeries<SalesData, String>>[
                        LineSeries<SalesData, String>(
                          // Bind data source
                            dataSource:  <SalesData>[
                              SalesData('Jan', 35),
                              SalesData('Feb', 28),
                              SalesData('Mar', 34),
                              SalesData('Apr', 32),
                              SalesData('May', 40)
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales
                        ),

                        LineSeries<SalesData, String>(
                          color: Colors.yellow,
                          // Bind data source
                            dataSource:  <SalesData>[
                              SalesData('Jan', 25),
                              SalesData('Feb', 98),
                              SalesData('Mar', 04),
                              SalesData('Apr', 42),
                              SalesData('May', 80)
                            ],
                            xValueMapper: (SalesData sales, _) => sales.year,
                            yValueMapper: (SalesData sales, _) => sales.sales
                        ),
                      ]
                  )
              ),









              SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFD454F4),
                  

                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Message spend record",
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "8/5/2023",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: LinearPercentIndicator(
                        animation: true,
                        animationDuration: 1000,
                        lineHeight: 20,
                        percent: .3,
                        progressColor: Colors.purple,
                        backgroundColor: Colors.white,
                        center: Text("97/100"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: Container(
                              alignment: Alignment.center,
                              //color: AppColors.blueColorNew,
                              //margin: EdgeInsets.only(bottom: 20),
                              width: 130,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.purple,
                                border: Border.all(color: Colors.black),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Show details",
                                  style: TextStyle(
                                      fontFamily: "Gilroy-Bold",
                                      color: Colors.cyan),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: ()=> Get.toNamed(creatclass),
                            child: Container(
                              alignment: Alignment.center,
                              //color: AppColors.blueColorNew,
                              //margin: EdgeInsets.only(bottom: 20),
                              width: 130,
                              height: 32,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.orange,
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "I want to buy SMS",
                                  style: TextStyle(
                                      fontFamily: "Gilroy-Bold",
                                      color: Colors.orange),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}






class SalesData {
  final String year;
  final double sales;

  SalesData(this.year, this.sales);
}






