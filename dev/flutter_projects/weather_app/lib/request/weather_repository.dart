import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'weather_request.dart';
import 'package:http/http.dart' as http;

Future<Weather> getWeather() async{
  final String url = 'https://api.hgbrasil.com/weather?key=15ec3543';

  final response = await http.get(url);

  if (response.statusCode == 200){
    return Weather.fromJson(json.decode(response.body));
  } else {
    throw Exception("Erro");
  }
}

//Pattern Bloc

//models
//proposito das models:
//pages: proposi
//blocs
//http