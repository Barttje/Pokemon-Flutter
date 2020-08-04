// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonScreen$Query$PokemonConnection$Pokemon$Type
    _$PokemonScreen$Query$PokemonConnection$Pokemon$TypeFromJson(
        Map<String, dynamic> json) {
  return PokemonScreen$Query$PokemonConnection$Pokemon$Type()
    ..name = json['name'] as String;
}

Map<String, dynamic> _$PokemonScreen$Query$PokemonConnection$Pokemon$TypeToJson(
        PokemonScreen$Query$PokemonConnection$Pokemon$Type instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

PokemonScreen$Query$PokemonConnection$Pokemon
    _$PokemonScreen$Query$PokemonConnection$PokemonFromJson(
        Map<String, dynamic> json) {
  return PokemonScreen$Query$PokemonConnection$Pokemon()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..image = json['image'] as String
    ..types = (json['types'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonScreen$Query$PokemonConnection$Pokemon$Type.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PokemonScreen$Query$PokemonConnection$PokemonToJson(
        PokemonScreen$Query$PokemonConnection$Pokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'types': instance.types?.map((e) => e?.toJson())?.toList(),
    };

PokemonScreen$Query$PokemonConnection
    _$PokemonScreen$Query$PokemonConnectionFromJson(Map<String, dynamic> json) {
  return PokemonScreen$Query$PokemonConnection()
    ..pokemon = (json['pokemon'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonScreen$Query$PokemonConnection$Pokemon.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PokemonScreen$Query$PokemonConnectionToJson(
        PokemonScreen$Query$PokemonConnection instance) =>
    <String, dynamic>{
      'pokemon': instance.pokemon?.map((e) => e?.toJson())?.toList(),
    };

PokemonScreen$Query _$PokemonScreen$QueryFromJson(Map<String, dynamic> json) {
  return PokemonScreen$Query()
    ..pokemonOfGeneration = json['pokemonOfGeneration'] == null
        ? null
        : PokemonScreen$Query$PokemonConnection.fromJson(
            json['pokemonOfGeneration'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PokemonScreen$QueryToJson(
        PokemonScreen$Query instance) =>
    <String, dynamic>{
      'pokemonOfGeneration': instance.pokemonOfGeneration?.toJson(),
    };

ItemListScreen$Query$BaseItem _$ItemListScreen$Query$BaseItemFromJson(
    Map<String, dynamic> json) {
  return ItemListScreen$Query$BaseItem()
    ..name = json['name'] as String
    ..id = json['id'] as int
    ..image = json['image'] as String
    ..effect = json['effect'] as String;
}

Map<String, dynamic> _$ItemListScreen$Query$BaseItemToJson(
        ItemListScreen$Query$BaseItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
      'effect': instance.effect,
    };

ItemListScreen$Query _$ItemListScreen$QueryFromJson(Map<String, dynamic> json) {
  return ItemListScreen$Query()
    ..itemsOfGeneration = (json['itemsOfGeneration'] as List)
        ?.map((e) => e == null
            ? null
            : ItemListScreen$Query$BaseItem.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ItemListScreen$QueryToJson(
        ItemListScreen$Query instance) =>
    <String, dynamic>{
      'itemsOfGeneration':
          instance.itemsOfGeneration?.map((e) => e?.toJson())?.toList(),
    };

MovesDetails$Query$Move$VerboseEffect
    _$MovesDetails$Query$Move$VerboseEffectFromJson(Map<String, dynamic> json) {
  return MovesDetails$Query$Move$VerboseEffect()
    ..effect = json['effect'] as String;
}

Map<String, dynamic> _$MovesDetails$Query$Move$VerboseEffectToJson(
        MovesDetails$Query$Move$VerboseEffect instance) =>
    <String, dynamic>{
      'effect': instance.effect,
    };

MovesDetails$Query$Move$NamedApiResource
    _$MovesDetails$Query$Move$NamedApiResourceFromJson(
        Map<String, dynamic> json) {
  return MovesDetails$Query$Move$NamedApiResource()
    ..name = json['name'] as String;
}

Map<String, dynamic> _$MovesDetails$Query$Move$NamedApiResourceToJson(
        MovesDetails$Query$Move$NamedApiResource instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

MovesDetails$Query$Move _$MovesDetails$Query$MoveFromJson(
    Map<String, dynamic> json) {
  return MovesDetails$Query$Move()
    ..name = json['name'] as String
    ..effectEntries = (json['effectEntries'] as List)
        ?.map((e) => e == null
            ? null
            : MovesDetails$Query$Move$VerboseEffect.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..power = json['power'] as int
    ..effectChance = json['effectChance'] as int
    ..accuracy = json['accuracy'] as int
    ..pp = json['pp'] as int
    ..type = json['type'] == null
        ? null
        : MovesDetails$Query$Move$NamedApiResource.fromJson(
            json['type'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovesDetails$Query$MoveToJson(
        MovesDetails$Query$Move instance) =>
    <String, dynamic>{
      'name': instance.name,
      'effectEntries':
          instance.effectEntries?.map((e) => e?.toJson())?.toList(),
      'power': instance.power,
      'effectChance': instance.effectChance,
      'accuracy': instance.accuracy,
      'pp': instance.pp,
      'type': instance.type?.toJson(),
    };

MovesDetails$Query _$MovesDetails$QueryFromJson(Map<String, dynamic> json) {
  return MovesDetails$Query()
    ..moveById = json['moveById'] == null
        ? null
        : MovesDetails$Query$Move.fromJson(
            json['moveById'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovesDetails$QueryToJson(MovesDetails$Query instance) =>
    <String, dynamic>{
      'moveById': instance.moveById?.toJson(),
    };

MovesDetailsArguments _$MovesDetailsArgumentsFromJson(
    Map<String, dynamic> json) {
  return MovesDetailsArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$MovesDetailsArgumentsToJson(
        MovesDetailsArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

MovesScreen$Query$Move$NamedApiResource
    _$MovesScreen$Query$Move$NamedApiResourceFromJson(
        Map<String, dynamic> json) {
  return MovesScreen$Query$Move$NamedApiResource()
    ..name = json['name'] as String;
}

Map<String, dynamic> _$MovesScreen$Query$Move$NamedApiResourceToJson(
        MovesScreen$Query$Move$NamedApiResource instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

MovesScreen$Query$Move _$MovesScreen$Query$MoveFromJson(
    Map<String, dynamic> json) {
  return MovesScreen$Query$Move()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..type = json['type'] == null
        ? null
        : MovesScreen$Query$Move$NamedApiResource.fromJson(
            json['type'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MovesScreen$Query$MoveToJson(
        MovesScreen$Query$Move instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type?.toJson(),
    };

MovesScreen$Query _$MovesScreen$QueryFromJson(Map<String, dynamic> json) {
  return MovesScreen$Query()
    ..movesOfGeneration = (json['movesOfGeneration'] as List)
        ?.map((e) => e == null
            ? null
            : MovesScreen$Query$Move.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$MovesScreen$QueryToJson(MovesScreen$Query instance) =>
    <String, dynamic>{
      'movesOfGeneration':
          instance.movesOfGeneration?.map((e) => e?.toJson())?.toList(),
    };

PokemonDetails$Query$Pokemon$Type _$PokemonDetails$Query$Pokemon$TypeFromJson(
    Map<String, dynamic> json) {
  return PokemonDetails$Query$Pokemon$Type()..name = json['name'] as String;
}

Map<String, dynamic> _$PokemonDetails$Query$Pokemon$TypeToJson(
        PokemonDetails$Query$Pokemon$Type instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

PokemonDetails$Query$Pokemon$Stat _$PokemonDetails$Query$Pokemon$StatFromJson(
    Map<String, dynamic> json) {
  return PokemonDetails$Query$Pokemon$Stat()
    ..name = json['name'] as String
    ..baseStat = json['baseStat'] as int;
}

Map<String, dynamic> _$PokemonDetails$Query$Pokemon$StatToJson(
        PokemonDetails$Query$Pokemon$Stat instance) =>
    <String, dynamic>{
      'name': instance.name,
      'baseStat': instance.baseStat,
    };

PokemonDetails$Query$Pokemon _$PokemonDetails$Query$PokemonFromJson(
    Map<String, dynamic> json) {
  return PokemonDetails$Query$Pokemon()
    ..name = json['name'] as String
    ..types = (json['types'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonDetails$Query$Pokemon$Type.fromJson(
                e as Map<String, dynamic>))
        ?.toList()
    ..description = json['description'] as String
    ..stats = (json['stats'] as List)
        ?.map((e) => e == null
            ? null
            : PokemonDetails$Query$Pokemon$Stat.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PokemonDetails$Query$PokemonToJson(
        PokemonDetails$Query$Pokemon instance) =>
    <String, dynamic>{
      'name': instance.name,
      'types': instance.types?.map((e) => e?.toJson())?.toList(),
      'description': instance.description,
      'stats': instance.stats?.map((e) => e?.toJson())?.toList(),
    };

PokemonDetails$Query _$PokemonDetails$QueryFromJson(Map<String, dynamic> json) {
  return PokemonDetails$Query()
    ..pokemonById = json['pokemonById'] == null
        ? null
        : PokemonDetails$Query$Pokemon.fromJson(
            json['pokemonById'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PokemonDetails$QueryToJson(
        PokemonDetails$Query instance) =>
    <String, dynamic>{
      'pokemonById': instance.pokemonById?.toJson(),
    };

PokemonDetailsArguments _$PokemonDetailsArgumentsFromJson(
    Map<String, dynamic> json) {
  return PokemonDetailsArguments(
    id: json['id'] as int,
  );
}

Map<String, dynamic> _$PokemonDetailsArgumentsToJson(
        PokemonDetailsArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
