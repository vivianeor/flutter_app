
import 'package:flutter/material.dart';
import 'package:flutter_app/models/cat.dart';

class Cats extends StatefulWidget {
  @override
  _PageOneState createState() => _PageOneState();
}

class _PageOneState extends State<Cats> {

  List<Cat> cats = [
    Cat(picture: "https://http.cat/400", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/200", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/300", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/500", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/401", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/402", statusCode: 400, description: "Bad Request"),
    Cat(picture: "https://http.cat/403", statusCode: 400, description: "Bad Request"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Flutter Demo'),
      ),
       body: SingleChildScrollView(
         child: Container(
             color: Colors.blueAccent,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 5),
                         alignment: Alignment.center,
                         width: 100,
                         height: 200,
                         color: Colors.yellow,
                         child: Container(
                           width: 20,
                           height: 20,
                           color: Colors.blueAccent,
                         ),
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 5),
                         alignment: Alignment.center,
                         width: 100,
                         height: 200,
                         color: Colors.yellow,
                       ),
                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 5),
                         alignment: Alignment.center,
                         width: 100,
                         height: 200,
                         color: Colors.yellow,
                       ),
                       Padding(padding: EdgeInsets.only(bottom: 10.0)),
                     ],
                   ),
                   Padding(
                     padding: EdgeInsets.only(bottom: 10),
                   ),
                   ListView.builder(
                     physics: NeverScrollableScrollPhysics(),
                     shrinkWrap: true,
                     itemCount: cats.length,
                     itemBuilder: (context, index){
                       return Container(
                         margin: EdgeInsets.only(bottom: 10),
                         child: Column(
                           children: [
                             Image.network(
                               cats[index].picture,
                               height: 200,
                               width: MediaQuery.of(context).size.width - 50,
                               fit: BoxFit.cover,
                             ),
                             Container(
                               height: 100,
                               width: MediaQuery.of(context).size.width - 50,
                               color: Colors.red,
                               child: Column(
                                 children: [
                                   Text(cats[index].statusCode.toString()),
                                   Text(cats[index].description)
                                 ],
                               ),
                             )
                           ],
                         ),
                       );
                     },
                   ),
                   Container(
                     height: 500,
                     width: MediaQuery.of(context).size.width - 50,
                     child: ListView.builder(
                       scrollDirection: Axis.horizontal,
                       itemCount: cats.length,
                       shrinkWrap: true,
                       itemBuilder: (context, index){
                         return Container(
                           margin: EdgeInsets.only(right: 10),
                           child: Column(
                             children: [
                               Image.network(
                                 cats[index].picture,
                                 height: 200,
                                 width: MediaQuery.of(context).size.width - 50,
                                 fit: BoxFit.cover,
                               ),
                               Container(
                                 height: 100,
                                 width: MediaQuery.of(context).size.width - 50,
                                 color: Colors.red,
                                 child: Column(
                                   children: [
                                     Text(cats[index].statusCode.toString()),
                                     Text(cats[index].description)
                                   ],
                                 ),
                               )
                             ],
                           ),
                         );
                       },
                     ),
                   ),
                   Container(
                     height: 500,
                     width: MediaQuery.of(context).size.width - 50,
                     child: GridView.builder(
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                         mainAxisSpacing: 10,
                         crossAxisSpacing: 20,
                         crossAxisCount: 2,
                       ),
                       physics: NeverScrollableScrollPhysics(),
                       shrinkWrap: true,
                       itemCount: cats.length,
                       itemBuilder: (context, index){
                         return Container(
                           margin: EdgeInsets.only(right: 10),
                           child: Column(
                             children: [
                               Image.network(
                                 cats[index].picture,
                                 height: 100,
                                 width: MediaQuery.of(context).size.width - 50,
                                 fit: BoxFit.cover,
                               ),
                               Container(
                                 height: 200,
                                 width: MediaQuery.of(context).size.width - 50,
                                 color: Colors.red,
                                 child: Column(
                                   children: [
                                     Text(cats[index].statusCode.toString()),
                                     Text(cats[index].description)
                                   ],
                                 ),
                               ),
                               //Padding(padding: EdgeInsets.only(bottom: 50)),
                             ],
                           ),
                         );
                       },

                     ),
                   ),
                 ],
               ),
               ),
             ),
       ),
       );
  }


//stack
//listviewbuilder
//gridviewbuilder
//StreamBuilder
//Bloc
//gerenciamento de estado
//Separação de responsabilidades
//como entender componentes lendo o código e a documentação