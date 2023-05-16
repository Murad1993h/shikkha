import 'package:flutter/material.dart';

class CreatClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 90),
        child: Column(
          children: [
            Center(
              child: Table(
                border: TableBorder.all(),
                children: [

                  TableRow(


                    children:<Widget> [


                      TableCell(


                        child: Center(child: Text('No',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),





                      TableCell(
                        child: Center(child: Center(child: Text('Class Name',style: TextStyle(fontWeight: FontWeight.bold),))),
                      ),
                      TableCell(
                        child: Center(child: Text('Monthly Fees',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                      TableCell(
                        child: Center(child: Text('Action',style: TextStyle(fontWeight: FontWeight.bold),)),
                      ),
                    ],











                  ),
                  TableRow(

                    children: [

                      Center(
                        child: TableCell(
                          child: Text('1'),
                        ),
                      ),
                      TableCell(
                        child: Center(child: Text('Class One')),
                      ),
                      TableCell(
                        child: Center(child: Text('12000')),
                      ),
                      TableCell(
                        child:

                        Center(child:

                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: (){},
                                
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.all(2)
                                ),
                                child: Text("Edit")),
                            ElevatedButton(onPressed: (){}, child: Text("Delete")),

                          ],
                        )


                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('2')),
                      ),
                      TableCell(
                        child: Center(child: Text('Class Two')),
                      ),
                      TableCell(
                        child: Center(child: Text('12000')),
                      ),
                      TableCell(
                        child: Center(child: Text('Edit')),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Center(child: Text('3')),
                      ),
                      TableCell(
                        child: Center(child: Text('Class Three')),
                      ),
                      TableCell(
                        child: Center(child: Text('12000')),
                      ),
                      TableCell(
                        child: Center(child: Text('Edit')),
                      ),
                    ],
                  ),













                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
