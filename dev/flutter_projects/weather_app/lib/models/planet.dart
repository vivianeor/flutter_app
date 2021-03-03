import 'package:json_annotation/json_annotation.dart';

part 'planet.g.dart';

@JsonSerializable()
class Planet {
  Planet({
    this.climate,
    this.created,
    this.edited,
    this.gravity,
    this.name,
    this.orbitalPeriod,
    this.population,
    this.rotationPeriod,
    this.surfaceWater,
    this.terrain
  });

  String climate;
  String created;
  String edited;
  String gravity;
  String name;
  @JsonKey(name: "orbital_period")
  String orbitalPeriod;
  String population;
  @JsonKey(name: "rotation_period")
  String rotationPeriod;
  @JsonKey(name: "surface_water")
  String surfaceWater;
  String terrain;
  List<String> films;

  factory Planet.fromJson(Map<String, dynamic> json) => _$PlanetFromJson(json);
  Map<String, dynamic> toJson() => _$PlanetToJson(this);
}


@JsonSerializable()
class PlanetList {
  List<Planet> results;
  int count;
  String next;
  String previous;


  PlanetList({
    this.count,
    this.next,
    this.previous,
    this.results
  });

  factory PlanetList.fromJson(Map<String, dynamic> json) => _$PlanetListFromJson(json);
  Map<String, dynamic> toJson() => _$PlanetListToJson(this);

}