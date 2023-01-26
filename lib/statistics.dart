import 'package:flutter/material.dart';
import 'package:lingua_final/page_2.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  var sta = Page2.statistics0;
  var expla = Page2.sta_explanation0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 330,

                  decoration: BoxDecoration(

                      color: Color(0xFF129cff),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                  ),
                  child:Container(
                    margin: EdgeInsets.only(right: 0, top: 245),
                    child: Column(
                      children: [
                        Container(child: Text('$sta', style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: 'Inter'),)),
                      ],

                    ),),
                ),
              ],
            ),
            SizedBox(width: 0,height: 20,),

            Stack(
              children: [
              Container(
                width: 350,
                height: 70,
                decoration: BoxDecoration(

                  border: Border.all(
                    width: 1, //
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),

              ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  width: 300,
                  height: 70,
                  decoration: BoxDecoration(

                    color: Color(0xFF129cff),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                    ),
                  ),
                Container(
                    margin: EdgeInsets.only(top: 20, left: 30),
                    child: Text('A1-A2',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

                Container(
                    margin: EdgeInsets.only(top: 20, left: 280),
                    child: Text('94%',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

              ],
            ),


            SizedBox(width: 0, height: 10,),



            Stack(
              children: [
                Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(

                    border: Border.all(
                      width: 1, //
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50),
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  width: 0,
                  height: 70,
                  decoration: BoxDecoration(

                    color: Color(0xFF129cff),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, left: 30),
                    child: Text('B1-B2',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

                Container(
                    margin: EdgeInsets.only(top: 20, left: 280),
                    child: Text('0%',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

              ],
            ),


            SizedBox(width: 0, height: 10,),

            Stack(
              children: [
                Container(
                  width: 350,
                  height: 70,
                  decoration: BoxDecoration(

                    border: Border.all(
                      width: 1, //
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50),
                    ),
                  ),

                ),
                Container(
                  margin: EdgeInsets.only(left: 0),
                  width: 0,
                  height: 70,
                  decoration: BoxDecoration(

                    color: Color(0xFF129cff),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), bottomLeft: Radius.circular(50)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20, left: 30),
                    child: Text('C1-C2',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

                Container(
                    margin: EdgeInsets.only(top: 20, left: 280),
                    child: Text('0%',style: TextStyle(fontFamily: 'Inter',fontSize: 25),)),

              ],
            ),


            SizedBox(width: 0,height: 30,),
            Container(

              margin: EdgeInsets.only(right: 60),
                child: Text("$expla",style: TextStyle(fontSize: 14, fontFamily: 'Inter', color: Color(0xFFB3B3B3)),)),
            

          ],
        ),
      ),
    );
  }
}