// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Planet _$PlanetFromJson(Map<String, dynamic> json) {
  return Planet(
    climate: json['climate'] as String,
    created: json['created'] as String,
    edited: json['edited'] as String,
    gravity: json['gravity'] as String,
    name: json['name'] as String,
    orbitalPeriod: json['orbital_period'] as String,
    population: json['population'] as String,
    rotationPeriod: json['rotation_period'] as String,
    surfaceWater: json['surface_water'] as String,
    terrain: json['terrain'] as String,
  )..films = (json['films'] as List)?.map((e) => e as String)?.toList();
}

Map<String, dynamic> _$PlanetToJson(Planet instance) => <String, dynamic>{
      'climate': instance.climate,
      'created': instance.created,
      'edited': instance.edited,
      'gravity': instance.gravity,
      'name': instance.name,
      'orbital_period': instance.orbitalPeriod,
      'population': instance.population,
      'rotation_period': instance.rotationPeriod,
      'surface_water': instance.surfaceWater,
      'terrain': instance.terrain,
      'films': instance.films,
    };

PlanetList _$PlanetListFromJson(Map<String, dynamic> json) {
  return PlanetList(
    count: json['count'] as int,
    next: json['next'] as String,
    previous: json['previous'] as String,
    results: (json['results'] as List)
        ?.map((e) =>
            e == null ? null : Planet.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlanetListToJson(PlanetList instance) =>
    <String, dynamic>{
      'results': instance.results,
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
    };
