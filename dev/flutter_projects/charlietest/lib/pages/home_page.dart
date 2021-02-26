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
        body:
        Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                color: Colors.black,
                width: MediaQuery.of(context).size.width -40,
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        color: Colors.red,
                      )
                    ],
                  ),
              ),
            ],
          ),
        )
    );
  }
}
