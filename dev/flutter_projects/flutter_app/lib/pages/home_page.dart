import 'package:flutter/material.dart';
import 'package:flutter_app/pages/cats_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Flutter Demo'),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(150.0),
            child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 50,
                      color: Colors.green,
                      child: Text('Primeiro'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        alignment: Alignment.center,
                        width: 80,
                        height: 50,
                        color: Colors.red,
                        child: Text('Segundo'),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 80,
                      height: 50,
                      color: Colors.grey,
                      child: Text('Terceiro'),
                    ),
                    RaisedButton(
                      child: const Text('Cats sem bloc'),
                      elevation: 4.0,
                      splashColor: Colors.yellow,
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute<void>(builder: (context) => Cats()));
                      },
                    ),
                    RaisedButton(
                      child: const Text('Swapi com bloc'),
                      elevation: 4.0,
                      splashColor: Colors.yellow,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute<void>(builder: (context) => Cats()));
                      },
                    )
             ],
            ),
          ),
        ),
      ),
    );
  }
}
