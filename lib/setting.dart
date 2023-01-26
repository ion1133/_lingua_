import 'package:flutter/material.dart';
import 'package:lingua_final/page_1.dart';
import 'package:lingua_final/page_2.dart';
import 'package:lingua_final/page_3.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {

  var setting = Page2.setting0;
  var change_app_l = Page2.change_app_lang0;
  var change_ll = Page2.chang_learn_lang0;
  var edit = Page2.edit_level0;

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
                        Container(child: Text('$setting', style: TextStyle(fontSize: 40, color: Colors.white, fontFamily: 'Inter'),)),
                      ],

                    ),),
                ),
              ],
            ),
            SizedBox(width: 0,height: 20,),

            Container(
              width: 380,
              child: TextButton(
                onPressed: () { print('goes to change app language'); },
                child: ListTile(
                  leading: Icon(Icons.language, size: 40,),
                  title: Text('$change_app_l', style: TextStyle(fontFamily: 'Inter', fontSize: 23),),

                ),
              ),
            ),

            Container(
              width: 320,
              height: 1,
              color: Colors.grey[400],
            ),


            Container(
              width: 380,
              child: TextButton(

                onPressed: () { print('goes to change learning language'); },
                child: ListTile(
                  leading: Icon(Icons.change_circle, size: 40,),
                  title: Text('$change_ll', style: TextStyle(fontFamily: 'Inter', fontSize: 23),),
                ),
              ),
            ),

            Container(
              width: 320,
              height: 1,
              color: Colors.grey[400],
            ),


            Container(
              width: 380,
              child: TextButton(
                onPressed: (){ print('goes to level editing'); },
                child: ListTile(
                  leading: Icon(Icons.edit, size: 40,),
                  title: Text('$edit', style: TextStyle(fontFamily: 'Inter', fontSize: 23),),
                ),
              ),
            ),

            Container(
              width: 320,
              height: 1,
              color: Colors.grey[400],
            ),

          ],
        ),
      ),
    );
  }
}