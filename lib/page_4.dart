import 'package:flutter/material.dart';
import 'package:lingua_final/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:lingua_final/page_2.dart';


class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {

bool isLastPage = false;

var st = Page2.start;
var sts = Page2.start_sen;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:

      Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 125),
                child: Text("$sts",style: TextStyle(fontSize: 30, fontFamily: 'Ubuntu'),)),

            Container(
              margin: EdgeInsets.only(top: 300),
              child: GestureDetector(onTap: () async {

                final prefs = await SharedPreferences.getInstance();
                prefs.setBool('showHome', true);

                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF129cff)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("$st",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Inter',fontSize: 20),),
                  ),
                ),
              ),
            )

          ],
        ),
      )
    );
  }
}
