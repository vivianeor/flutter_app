import 'package:flutter/material.dart';
import 'package:weather_app/pages/planets_page.dart';
import 'package:weather_app/pages/weather_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Previsão do Tempo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(100.0),
                child: Container(
                  child: Text('Olá! Veja a previsão do tempo hoje:',
                      style: TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ),
              RaisedButton(
                child: const Text('Próximo'),
                elevation: 4.0,
                splashColor: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (context) => WeatherPage()));
                },
              ),
              RaisedButton(
                child: const Text('Planetas'),
                elevation: 4.0,
                splashColor: Colors.yellow,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (context) => PlanetsPage()));
                },
              )

            ],
          ),
      ),
    );
  }
}
