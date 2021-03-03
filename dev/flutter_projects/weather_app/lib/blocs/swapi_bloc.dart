import 'dart:async';
import 'dart:convert';
import 'package:weather_app/http/swapi_http.dart';
import 'package:weather_app/models/planet.dart';

class SwapiBloc {
  SwapiHttp _http = new SwapiHttp();

  final _planetController = new StreamController<List<Planet>>.broadcast();
  Stream<List<Planet>> get planetStream => _planetController.stream;

  void getPlanets() async {
    try{
      var response = await _http.getPlanets();
      var utf8Body = utf8.decode(response.bodyBytes);
      if(response.statusCode == 200){
        var json = jsonDecode(utf8Body);
        var planetList = PlanetList.fromJson(json);
        _planetController.sink.add(planetList.results);
      }
      else{
        var error = new Exception("Erro no servidor");
        _planetController.sink.addError(error);
      }
    } on Exception catch(error){
      _planetController.sink.addError(error);
    }
  }

  dispose(){
    _planetController.close();
  }
}