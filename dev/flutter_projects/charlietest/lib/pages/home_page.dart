import 'package:charlietest/pages/content_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Scaffold é o widget que serve pra esqueleto do app
    return Scaffold(
      // Barra superior do app
        appBar: AppBar(
          title: Text("Charlie"),
        ),
        // body: conteudo do corpo do app // container: widget que serve para colocar outros widgets dentro dele, tipos as divs do css
        body: Container(
           width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 200),
            decoration: BoxDecoration(
            color: Colors.grey
            ),
            child: Column(
                children: [
                    Text('Primeira'),
                    Container(
                      child: Text('Primeira coluuna'),
                      color: Colors.green,
                    ),
                    Text('Segundo'),
                    Container(
                      child: Text('Primeira coluuna'),
                      color: Colors.black,
                    ),
                    Text('Terceiro'),
                    Container(
                      child: Text('Primeira coluuna'),
                      color: Colors.yellow,
                    ),
                    RaisedButton(
                      child: Text('Proximo'),
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute<void>(builder: (context) => ContentPage())
                        );
                      },
                    )
                      ],
                     ),
                     ),
                    );
                  }
                }
