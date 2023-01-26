import 'package:flutter/material.dart';
import 'package:lingua_final/page_2.dart';




class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var new_color_b = Colors.black;
  var new_color_i = Colors.black;
  var new_color_a = Colors.black;
  var level_is_b = false;
  var level_is_i = false;
  var level_is_a = false;
  var level_is;
  String level_specify(){
    if (level_is_b == true){
      level_is = 'A1-A2';
      return level_is;
    }
    else if(level_is_i == true){
      level_is = 'B1-B2';
      return level_is;
    }
    else if(level_is_a == true){
      level_is = 'C1-C2';
      return level_is;
    }
    else{
      level_is = '';
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Text('I know as much as\na/an?',style: TextStyle(fontSize: 35, fontFamily: 'Ubuntu'),),

          SizedBox(height: 90,),

          TextButton(
            onPressed: (){
              setState(() {
                new_color_b = Color(0xFF129cff);
                new_color_i = Colors.black;
                new_color_i = Colors.black;
                level_is_b = true;
                level_is_a = false;
                level_is_i = false;
                level_specify();
              });

             },
            child: Center(
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(
                  width: 1, //
                ),
                borderRadius: BorderRadius.all(Radius.circular(50),
                ),
                ),
                width: 250,
                height: 70,

                child: Center(child: Text('Beginner', style: TextStyle(fontFamily: 'Inter', fontSize: 25, color: new_color_b),)),


              ),
            ),
          ),



          TextButton(
            onPressed: (){
              setState(() {
                new_color_i = Color(0xFF129cff);
                new_color_a = Colors.black;
                new_color_b = Colors.black;
                level_is_i = true;
                level_is_a = false;
                level_is_b = false;
                level_specify();
              });
             },
            child: Center(
              child: Container(

                decoration: BoxDecoration(

                  border: Border.all(
                    width: 1, //
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                width: 250,
                height: 70,

                child: Center(child: Text('Intermediate', style: TextStyle(fontFamily: 'Inter', fontSize: 25, color: new_color_i),)),


              ),
            ),
          ),



          TextButton(
            onPressed: (){

              setState(() {
                new_color_a = Color(0xFF129cff);
                new_color_b = Colors.black;
                new_color_i = Colors.black;
                level_is_a = true;
                level_is_b = false;
                level_is_i = false;
                level_specify();

              });
             },
            child: Center(
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(
                    width: 1, //
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(50),
                  ),
                ),
                width: 250,
                height: 70,

                child: Center(child: Text('Advanced', style: TextStyle(fontFamily: 'Inter', fontSize: 25, color: new_color_a),)),


              ),
            ),
          ),

        ],
      ),



    );
  }
}





















































// class Page3 extends StatefulWidget {
//   const Page3({super.key});
//
//   @override
//   State<Page3> createState() => _Page3State();
// }
//
// class _Page3State extends State<Page3> {
//   @override
//   int value = 0;
//
//   void level_finder(value){
//     var level;
//     if (value == 1) {
//       level = 'A1-A2';
//     } else if (value == 2) {
//       level = 'B1-B2';
//     } else if (value == 3) {
//       level = 'C1-C2';
//     }
//     print(level);
//   }
//
//   Widget CustomRadioButton(String text, int index) {
//     return ButtonTheme(
//       minWidth: 200.0,
//       height: 100.0,
//       child: OutlinedButton(
//         onPressed: () {
//           setState(() {
//             value = index;
//
//           });
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(10),
//           child: Text(
//             text,
//             style: TextStyle(
//               fontFamily: 'Inter',
//               fontSize: 25,
//               color: (value == index) ? Color(0xFF129cff) : Colors.black,
//             ),
//           ),
//         ),
//         style: OutlinedButton.styleFrom(
//           primary: Colors.white,
//           backgroundColor: Colors.white,
//           shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(100),),),
//         ),
//
//       ),
//     );
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [

//         SizedBox(height: 80),
//         Column(
//           children: <Widget>[
//             CustomRadioButton("Beginner", 1),
//             SizedBox(height: 20),
//             CustomRadioButton("Intermediate", 2),
//             SizedBox(height: 20),
//             CustomRadioButton("Advanced", 3)
//           ],
//         ),
//       ],
//     );
//   }
// }