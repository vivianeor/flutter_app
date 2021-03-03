import 'package:flutter/material.dart';
import 'package:weather_app/blocs/swapi_bloc.dart';
import 'package:weather_app/models/planet.dart';

class PlanetsPage extends StatefulWidget {
  @override
  _PlanetsPageState createState() => _PlanetsPageState();
}

class _PlanetsPageState extends State<PlanetsPage> {
  SwapiBloc bloc = new SwapiBloc();

  @override
  void initState() {
    bloc.getPlanets();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          child: StreamBuilder<List<Planet>>(
            stream: bloc.planetStream,
            builder: (context, snapshot){
              if(snapshot.hasError){
                return Text("Vish, deu ruim");
              }
              if(snapshot.hasData){
                var planets = snapshot.data;
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: planets.length,
                  itemBuilder: (context, index){
                    return Container(
                      alignment: Alignment.center,
                      child: Text(planets[index].name),
                    );
                  },
                );
              }
              return Container(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ),
    );
  }
}
