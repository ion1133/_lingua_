import 'package:flutter/material.dart';
import 'package:lingua_final/page_4.dart' as p4;
import 'package:lingua_final/page_2.dart' as p2;
import 'package:lingua_final/page_3.dart' as p3;



class Page2 extends StatefulWidget {
  static var native;
  static var full_name0;
  static var do_you_know0;
  static var do_you_remember0;
  static var yeah0;
  static var nope0;
  static var next_card0;
  static var pool0;
  static var memorize0;
  static var setting0;
  static var statistics0;
  static var change_app_lang0;
  static var chang_learn_lang0;
  static var edit_level0;
  static var sta_explanation0;
  static var start_sen;
  static var start;

  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
  var lang_for_app;
  void lang_native(selected){

    if (selected == '1') {
      lang_for_app = 'eng';
      Page2.full_name0 = 'Learning English';
      Page2.do_you_know0 = 'Do you know this word ?';
      Page2.do_you_remember0 = 'Do you remember this word ?';
      Page2.yeah0 = 'Yeah';
      Page2.nope0 = 'Nope';
      Page2.next_card0 = 'Next card';
      Page2.pool0 = 'Pool';
      Page2.memorize0 = 'Memorize';
      Page2.setting0 = 'Setting';
      Page2.statistics0 = 'Statistics';
      Page2.change_app_lang0 = 'Change app language';
      Page2.chang_learn_lang0 = 'Change learning language';
      Page2.edit_level0 = 'Edit your level';
      Page2.sta_explanation0 = 'Explanation of language levels A1 to\nC2. The three broad levels are A1/A2\n("Basic User"),\nB1/B2 ("Independent User") and\nC1/C2 ("Proficient User")';
      Page2.start_sen = "let's start";
      Page2.start = "start";

    } else if (selected == '2') {
      lang_for_app = 'ger';
      Page2.full_name0 = 'Deutsch Lernen';
      Page2.do_you_know0 = 'Kennst du dieses Wort?';
      Page2.do_you_remember0 = 'Erinnerst du dich an dieses Wort ?';
      Page2.yeah0 = 'Ja';
      Page2.nope0 = 'nö';
      Page2.next_card0 = 'Nächste Karte';
      Page2.pool0 = 'Schwimmbad';
      Page2.memorize0 = 'Memorieren';
      Page2.setting0 = 'Einstellung';
      Page2.statistics0 = 'Statistiken';
      Page2.change_app_lang0 = 'App Sprache ändern';
      Page2.chang_learn_lang0 = 'Lernsprache ändern';
      Page2.edit_level0 = 'Bearbeiten Sie Ihre Ebene';
      Page2.sta_explanation0 = 'Erläuterung der Sprachniveaus A1 bis \nc2. Die drei breiten Ebenen sind A1/A2\n ("Basic -Benutzer"),\n B1/B2 ("unabhängiger Benutzer") und\nC1/C2 ("Kompetenter Benutzer")';
      Page2.start_sen = "Lasst uns beginnen";
      Page2.start = "anfang";

    } else if (selected == '3') {
      lang_for_app = 'fre';
      Page2.full_name0 = 'Apprendre le Français';
      Page2.do_you_know0 = 'Connaissez-vous ce mot?';
      Page2.do_you_remember0 = 'Te souviens-tu de ce mot ?';
      Page2.yeah0 = 'Ouais';
      Page2.nope0 = 'Non';
      Page2.next_card0 = 'Carte suivante';
      Page2.pool0 = 'Piscine';
      Page2.memorize0 = 'Mémoriser';
      Page2.setting0 = 'Paramètre';
      Page2.statistics0 = 'Statistiques';
      Page2.change_app_lang0 = "Changer le langage de l'application";
      Page2.chang_learn_lang0 = "Changer la langue d'apprentissage";
      Page2.edit_level0 = 'Modifiez votre niveau';
      Page2.sta_explanation0 = 'Explication des niveaux de langue A1 à\nC2. Les trois niveaux généraux sont A1 / A2\n ("utilisateur de base"),\nB1 / B2 ("utilisateur indépendant") et\nC1 / C2 ("utilisateur compétent")';
      Page2.start_sen = "commençons";
      Page2.start = "ébut";


    } else if (selected == '4') {
      lang_for_app = 'tur';
      Page2.full_name0 = 'Türkçe Öğrenmek';
      Page2.do_you_know0 = 'Bu kelimeyi biliyor musun?';
      Page2.do_you_remember0 = 'Bu sözü hatırladın mı ?';

      Page2.yeah0 = 'Evet';
      Page2.nope0 = 'Hayır';
      Page2.next_card0 = 'Sonraki Kart';
      Page2.pool0 = 'Havuz';
      Page2.memorize0 = 'Ezberle';
      Page2.setting0 = 'Ayarlar';
      Page2.statistics0 = 'İstatistik';
      Page2.change_app_lang0 = 'Uygulama dilini değiştir';
      Page2.chang_learn_lang0 = 'Öğrenim dilini değiştir';
      Page2.edit_level0 = 'Seviyeni düzenle';
      Page2.sta_explanation0 = 'A1 ila C2 dil düzeylerinin açıklaması:\n. Üç geniş seviye A1/A2\n ("Temel Kullanıcı"),\nB1/B2 ("Bağımsız Kullanıcı") ve\nC1/C2 ("Yetkin Kullanıcı")")';
      Page2.start_sen = "Hadi başlayalım";
      Page2.start = "başlat";

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
                Text('Please select your \nnative language'
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
                          hint: new Text("Select Language"),
                          value: _selected,
                          onChanged: (newValue) {
                            setState(() {
                              _selected = newValue!;
                            });
                            lang_native(_selected);
                            Page2.native = lang_for_app;
                            print(_selected);
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
                                      child: Text(map["name"],style: TextStyle(fontSize:
                                      20, fontFamily: 'Inter'),)),
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
