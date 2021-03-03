import 'package:flutter/material.dart';
import 'package:weather_app/request/weather_repository.dart';
import 'package:weather_app/request/weather_request.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Previsão do Tempo',
      home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: Text('App Teste'),
          ),
          body: FutureBuilder<Weather>(
            future: getWeather(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        snapshot.data.date,
                        style: TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                      Icon(
                        Icons.cloud,
                        size: 250.0,
                        color: Colors.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          snapshot.data.condition,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      Text(
                          "Máxima: ${snapshot.data.maxTemp.toString()}°",
                          style:
                          TextStyle(fontSize: 20.0, color: Colors.white)),
                      Text("Mínima: ${snapshot.data.minTemp.toString()}°",
                          style:
                          TextStyle(fontSize: 20.0, color: Colors.white)),
                    ],
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator()
                );
              }
            },
          )),
    );
  }
}
