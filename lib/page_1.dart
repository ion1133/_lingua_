import 'package:flutter/material.dart';



class Page1 extends StatefulWidget {
  static var lang_learn;

  const Page1({super.key});


  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late String _selected;
  final List<Map> _myJson = [
  {"id": '1', "image": "images/english.png", "name": "English"},
  {"id": '2', "image": "images/german.png", "name": "German"},
  {"id": '3', "image": "images/french.png", "name": "French"},
  {"id": '4', "image": "images/turkish.png", "name": "Turkish"},

];
  @override
  void initState() {
    _selected = "1";
    super.initState();
  }
  var lang_learning0;

  void lang_to_learn(selected){

    if (selected == '1') {
      lang_learning0 = 'eng';
    } else if (selected == '2') {
      lang_learning0 = 'ger';

    } else if (selected == '3') {
      lang_learning0 = 'fre';

    } else if (selected == '4') {
      lang_learning0 = 'tur';

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
            child: Column(
              children: [
                Text('Which language do you\nwant to learn'
                  ,style: TextStyle(fontSize: 35, fontFamily: 'Ubuntu'),),



              ],
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton<String>(
                          isDense: true,
                          hint: new Text("Select Bank"),
                          value: _selected,
                          onChanged: (newValue) {
                            setState(() {
                              _selected = newValue!;

                            });

                            print(_selected);
                            lang_to_learn(_selected);
                            print(lang_learning0);
                            Page1.lang_learn = lang_learning0;

                          },

                          items: _myJson.map((Map map) {
                            return new DropdownMenuItem<String>(
                              value: map["id"].toString(),
                              // value: _mySelection,
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    map["image"],
                                    width: 35,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Text(map["name"],style: TextStyle(fontSize: 20,fontFamily: 'Inter'),)),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
