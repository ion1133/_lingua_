import 'package:lingua_final/pool.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'homepage.dart';
import 'package:flutter/material.dart';
import 'package:lingua_final/pool.dart';
import 'package:lingua_final/memorize.dart';
import 'package:lingua_final/setting.dart';
import 'package:lingua_final/statistics.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gsheets/gsheets.dart';
import 'dart:ui' as ui;



void main() async{

  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;

  runApp(
    new MediaQuery(
      data: new MediaQueryData.fromWindow(ui.window),
      child: new Directionality(
        textDirection: TextDirection.ltr,
        child: new MyApp(showHome :showHome),),),);

}


class MyApp extends StatelessWidget {
  late final bool showHome;
   MyApp({
    Key? key,
    required this.showHome,

})  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showHome ? MainPage() : HomePage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;
  late PageController pageController;
  @override
void initState(){
    super.initState();
    pageController = PageController(initialPage: this.pageIndex);


  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        body: PageView(
          controller: pageController,
          children: [
            Pool(),
            Memorize(),
            Setting(),
            Statistics(),
          ],
          physics: NeverScrollableScrollPhysics(),
        ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this.pageIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF129cff),
        onTap: (index) {
          setState(() {
            this.pageIndex = index;
          });
          pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.pool,size: 28,), label:'Pool'),
          BottomNavigationBarItem(icon: Icon(Icons.save,size: 28,), label: 'Memorize'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,size: 28,), label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.area_chart,size: 28,), label: 'Statistics'),
        ],
        selectedLabelStyle: TextStyle(fontSize: 13, fontFamily: 'Inter'),

      ),

            );
  }
}
