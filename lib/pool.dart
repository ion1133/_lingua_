import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:lingua_final/page_1.dart';
import 'package:lingua_final/page_2.dart';
import 'dart:ui' as ui;



const _credentials = r''' {
  "type": "service_account",
  "project_id": "lingua-372813",
  "private_key_id": "b62e650a9439e89b12c08b590b0d57f5207ce1c6",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEugIBADANBgkqhkiG9w0BAQEFAASCBKQwggSgAgEAAoIBAQDkMoZqxkjAc2ij\nsliYM0qYql0ORxqUcXx/8eywX+tkhclf2a1jKxHI5x39Kdiy/7phJaqUjE2vgzkO\nDYbCV2xJ5UlE5CpWqv8MbcvmWMuI9N9xo6OKO1nW0dNEbwrJbC42wdft7LBsDmmz\n6hl/xlp8UPb8iFVe+7DO9DMnEyNxIpcY1J0avsYgDN+JlD231V/fbK+uoOh9Fldx\n137o8OE3GyN3yUaiKlQG1yntUBpxbKwdyeULN3fJ2uG4uK9sCR+nHYL59GhgxMqI\nPecH2j15luAqJbPHkeZxfHu6BQiQXusUARRoU7pAx/hakSbWCXjHY+lfwEY4DS3U\nu0XErW7tAgMBAAECgf8/c0FhKTVufBziIYZSP/DDyA9doyHYJJ6/UbPbVtBirqHy\neTcZ54LEn61CoBpD2cAQWlGIQjT6gQ3QlKxvXSVh8kfKPRtaFRp4oA7jWrX3dh8I\nHOxcJiSO88jKm4nv7A1KoMoMXdrevGkEzCocXSIRnYjg3WSw7RxTtNiy1isb7HAc\nBil167Vf1BDmHl1T5DyM1qQZegwIG6DDl0OIUbU0QXz20V4DBUNIVooa5L7y9H7j\nv60/qHNh88SUTrBZKSbDvIjm+Y9aJl5ldGBJf+IyRmJIlBVyOVgNCqerAtDvU2iI\nE7lUmjrSALgBVUq5Fus6R4wzmIbl+V1gVzX9Ye0CgYEA++Pwz3lXtOhzWiBq06aF\nZdUoM8gMIL7k/5ZxhFiXTwQtB93DqCFsEWWB0R24nFArORKaij8AOrfBmt9k5e68\nURCvFGoEbqCyFp1r19/yz7yTsEgmiP7mQUZaOigKOh1FWATDH8sC7Fz/4fohiNOA\nmZQLghxagGjw8RojCX1OqU8CgYEA5+ugdOtSg+U9X3wdWb/2U1fPuuXUqXhSm6s0\nLsI86o3zyrVdryLShjLz5xMFOrDhXLdC5W7QBf9SRznVRlBlKmbF9UGZTo+/Wqhu\ngTVt2BvpO5svNx6IG9eu66V9ep5mew0rYag9IltDCuebA30TeldACVWEgFqMveu3\nJS9UnQMCgYAezjayOQXX8yHAYPyPm+rulE4RXyLUkmQROgXyCJ+go0Mali2Kj2PX\nENH6kCb2vvs6RKMvyxqtE7ISzcVaNYNEasTuuzSFjxOYnnIE+beJXme1hG1qDbp9\nOyxntmPhzZigdhyi88IMxCbrLRsSz8MHhUqPBAaxc6Qb6HVmgLOxEwKBgBdRJE+8\n/Q3PtWztMJI+b4iPko4K32eudje6bcOpubAnV3Rw6ZtbF+lwI/9+dQ8ii3Xj4vDo\nRDfmJKKOmPe5y4II1SxETSKN50I5HusUsReCLt/USVn0UuDhvW9pswTp+gmzGEJ4\nRLU4kbP99yLRp2ysav7FP04cTHwnv8EYUhx7AoGAYXBWmlGTiSA1FVo15pNX94Be\nfx3qyqoGEvoo4xgGU2yXHPaYU4XsWxA4useElvjrmsCVq8gsay5G6O8i4ifLZPMg\nuC+7i405B9UNfsyZdQ/HiidYQ8bU1Hf5/ohMFkZDM2UYHDvkTUrfIzDJmCMYMZld\nk96DONb+sWokIxlUclQ=\n-----END PRIVATE KEY-----\n",
  "client_email": "lingua@lingua-372813.iam.gserviceaccount.com",
  "client_id": "110956049358428444362",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/lingua%40lingua-372813.iam.gserviceaccount.com"
}
 ''';
final _poolID = '1e8A7wAiI9GRWNPTHO5ZhUah-wyc18P1YDky_iFOzKhY';



class Pool extends StatefulWidget {
  const Pool({Key? key}) : super(key: key);

  @override
  State<Pool> createState() => _PoolState();
}


class _PoolState extends State<Pool> {
  var next_word = 'nothing';
  int num_for_pool = 1;
  int num_for_mem = 1;
  var lang_learn = Page1.lang_learn;
  var fullname = Page2.full_name0;
  var pool = Page2.pool0;
  var do_you_know = Page2.do_you_know0;
  var yeah = Page2.yeah0;
  var nope = Page2.nope0;
  var next_card = Page2.next_card0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(

            children: [

              Stack(
                children: [
                  SizedBox(width: 40,),
                  Container(
                    width: double.infinity,
                    height: 250,

                    decoration: BoxDecoration(

                        color: Color(0xFF129cff),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
                    ),
                    child:Container(
                      margin: EdgeInsets.only(right: 160, top: 50),
                      child: Column(
                        children: [
                          Container( margin: EdgeInsets.only(left: 50), child: Text("$fullname", style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Inter'),)),
                          Container(
                            margin: EdgeInsets.only(right: 83),
                            child: Text('$pool', style: TextStyle(fontSize: 20, color: Color(0xFF56B8FF), fontFamily: 'Inter'),),)
                        ],

                      ),),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 180),
                    child: Stack(
                      children: [
                        Container(

                          alignment: Alignment.center,
                          child: Image.asset('images/square.png', width: 280, height: 351,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 165),
                          alignment: Alignment.center,
                          child: Text(
                            '$next_word',
                            style: TextStyle(color: Colors.black, fontSize: 22.0, fontFamily: 'Inter'),
                          ),),
                      ],

                    ),
                  ),
                ],
              ),


              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(width: 0, height: 20,),

                    Container(
                      margin: EdgeInsets.only(right: 80),
                      child: Text(
                        '$do_you_know',
                        style: TextStyle(color: Colors.black, fontSize: 22.0, fontFamily: 'Inter'),
                      ),
                    ),
                    SizedBox(width: 0, height: 10,),
                    Container(
                      width: double.infinity,
                      child: Row(


                        children: [
                          SizedBox(height: 0,width: 20,),
                          Expanded(
                            child: Stack(
                              children: [
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      num_for_pool = num_increaser(num_for_pool);
                                      read_word(num_for_pool).then((String result){
                                        setState(() {
                                          print(lang_learn);
                                          next_word = result;
                                        });
                                      });


                                      // next_word = 'hu';
                                      print(next_word);
                                      print('pressed');

                                    });
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 70,

                                    decoration: BoxDecoration(

                                        color: Color(0xFF129cff),
                                        borderRadius: BorderRadius.all(Radius.circular(30))                                    ),
                                  ),
                                ),

                                Container(
                                  width: 63,
                                  margin: EdgeInsets.only(left: 57, top: 27),
                                  child: Text('$yeah',style: TextStyle(fontFamily: 'Inter', fontSize: 22),),),
                              ],
                            ),
                          ),


                          Expanded(

                            child: Stack(
                              children: [
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      num_for_pool = num_increaser(num_for_pool);
                                      String word_to_mem = '';

                                      read_word(num_for_pool).then((String result){
                                        setState(() {
                                          word_to_mem = result;
                                        });
                                      });

                                      write_word(num_for_mem, word_to_mem);
                                      num_increaser(num_for_mem);


                                      // next_word = 'hu';

                                      print('inserted');

                                    });
                                  },
                                  child: Container(
                                    width: 160,
                                    height: 70,

                                    decoration: BoxDecoration(

                                        color: Color(0xFF129cff),
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 65,
                                    margin: EdgeInsets.only(left: 57, top: 27),
                                  child: Text('$nope',style: TextStyle(fontFamily: 'Inter', fontSize: 25),),),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        setState(() {
                          num_for_pool = num_increaser(num_for_pool);
                          read_word(num_for_pool).then((String result){
                            setState(() {
                              next_word = result;
                            });
                          });


                          // next_word = 'hu';
                          print(next_word);
                          print('pressed');

                        });
                      },
                      child: Stack(
                        children: [
                          Container(
                            child: Center(child: Text('$next_card',style: TextStyle(fontFamily: 'Inter', fontSize: 25, color: Colors.black),)),
                            width: 360,
                            height: 70,

                            decoration: BoxDecoration(

                                color: Color(0xFF129cff),
                                borderRadius: BorderRadius.all(Radius.circular(30))                                    ),
                          ),

                        ],
                      )
                    ),
                  ],
                ),
              )

            ],
        ),
      ),
    );
  }
}

Future<String> read_word(num) async {

  final gsheets = GSheets(_credentials);
  // fetch spreadsheet by its id
  final ss = await gsheets.spreadsheet(_poolID);

  print(ss.data.namedRanges.byName.values
      .map((e) => {
    'name': e.name,
    'start':
    '${String.fromCharCode((e.range?.startColumnIndex ?? 0) + 97)}${(e.range?.startRowIndex ?? 0) + 1}',
    'end':
    '${String.fromCharCode((e.range?.endColumnIndex ?? 0) + 97)}${(e.range?.endRowIndex ?? 0) + 1}'
  })
      .join('\n'));

// get worksheet by its title
  var sheet = ss.worksheetByTitle('pool');
// create worksheet if it does not exist yet
  sheet ??= await ss.addWorksheet('pool');


  final cell = await sheet.cells.cell(column: 1, row: num);
  // prints 'new'
  int a = 0;
  String value;
  value = await cell.value;
  return value;
}

void write_word(num, word_to_mem) async {

  final gsheets = GSheets(_credentials);
  // fetch spreadsheet by its id
  final ss = await gsheets.spreadsheet(_poolID);

  print(ss.data.namedRanges.byName.values
      .map((e) => {
    'name': e.name,
    'start':
    '${String.fromCharCode((e.range?.startColumnIndex ?? 0) + 97)}${(e.range?.startRowIndex ?? 0) + 1}',
    'end':
    '${String.fromCharCode((e.range?.endColumnIndex ?? 0) + 97)}${(e.range?.endRowIndex ?? 0) + 1}'
  })
      .join('\n'));

// get worksheet by its title
  var sheet = ss.worksheetByTitle('pool');
// create worksheet if it does not exist yet
  sheet ??= await ss.addWorksheet('pool');

  final cell = await sheet.cells.cell(column: 2, row: num);
  // prints 'new'
  int a = 0;
  await cell.post('$word_to_mem');


}

int num_increaser(num){

  num = num +1;
  return num;

}

