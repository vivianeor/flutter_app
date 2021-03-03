import 'package:http/http.dart';

class SwapiHttp {
  Client _client = new Client();
  String _url = "https://swapi.dev/api";
  Future<Response> getPlanets(){
    return _client.get("$_url/planets");
  }

  Future<Response> getPlanetById(int id){
    return _client.get("$_url/planets/$id");
  }
}