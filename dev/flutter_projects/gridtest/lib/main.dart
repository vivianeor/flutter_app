import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(
  MaterialApp(home: GridLayout())
);

class GridLayout extends StatelessWidget {

  List<String> events = [
    'Calendar',
    'Family',
    'Friends',
    'Lovely',
    'Me',
    'Team'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.jpeg'), fit: BoxFit.cover)
        ),
        child: Container(
          margin: const EdgeInsets.only(top: 120.0),
          child: GridView(
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: events.map((title){
                 return GestureDetector(
                   child: Card(
                     margin: const EdgeInsets.all(20.0),
                     child: getCardByTitle(title),
                   ),
                   onTap:() {
                   Fluttertoast.showToast(
                     msg: title + ' click ',
                     toastLength: Toast.LENGTH_SHORT,
                     gravity: ToastGravity.CENTER,
                     backgroundColor: Colors.red,
                     textColor: Colors.white,
                     fontSize: 16.0,
                   );
                 },
                );
               }).toList()
              ),
             ),
            ),
           );
          }
         }

Column getCardByTitle(String title) {
  String img = '';
  if(title == 'Calendar')
    img = 'assets/calendar.jpeg';
  else if(title == 'Family')
    img = 'assets/familytime.jpeg';
  else if(title == 'Friends')
    img = 'assets/friends.jpeg';
  else if(title == 'Lovely')
    img = 'assets/lovelytime.jpeg';
  else if(title == 'Me')
    img = 'assets/metime.jpeg';
  else
    img = 'assets/teamtime.jpeg';

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: Container(
          child: Stack(children: [
            Image.asset(
              img,
              width: 80.0,
              height: 80.0,)
          ],),
        ),
      ),
      Text(
        title,
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      )
    ],
  );
}



