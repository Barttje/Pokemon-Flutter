// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class PokemonScreen$Query$PokemonConnection$Pokemon$Type with EquatableMixin {
  PokemonScreen$Query$PokemonConnection$Pokemon$Type();

  factory PokemonScreen$Query$PokemonConnection$Pokemon$Type.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonScreen$Query$PokemonConnection$Pokemon$TypeFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$PokemonScreen$Query$PokemonConnection$Pokemon$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonScreen$Query$PokemonConnection$Pokemon with EquatableMixin {
  PokemonScreen$Query$PokemonConnection$Pokemon();

  factory PokemonScreen$Query$PokemonConnection$Pokemon.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonScreen$Query$PokemonConnection$PokemonFromJson(json);

  int id;

  String name;

  String image;

  List<PokemonScreen$Query$PokemonConnection$Pokemon$Type> types;

  @override
  List<Object> get props => [id, name, image, types];
  Map<String, dynamic> toJson() =>
      _$PokemonScreen$Query$PokemonConnection$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonScreen$Query$PokemonConnection with EquatableMixin {
  PokemonScreen$Query$PokemonConnection();

  factory PokemonScreen$Query$PokemonConnection.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonScreen$Query$PokemonConnectionFromJson(json);

  List<PokemonScreen$Query$PokemonConnection$Pokemon> pokemon;

  @override
  List<Object> get props => [pokemon];
  Map<String, dynamic> toJson() =>
      _$PokemonScreen$Query$PokemonConnectionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonScreen$Query with EquatableMixin {
  PokemonScreen$Query();

  factory PokemonScreen$Query.fromJson(Map<String, dynamic> json) =>
      _$PokemonScreen$QueryFromJson(json);

  PokemonScreen$Query$PokemonConnection pokemonOfGeneration;

  @override
  List<Object> get props => [pokemonOfGeneration];
  Map<String, dynamic> toJson() => _$PokemonScreen$QueryToJson(this);
}

class PokemonScreenQuery
    extends GraphQLQuery<PokemonScreen$Query, JsonSerializable> {
  PokemonScreenQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'PokemonScreen'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pokemonOfGeneration'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'generation'),
                    value: EnumValueNode(name: NameNode(value: 'GEN_I')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'pokemon'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                          name: NameNode(value: 'orderBy'),
                          value: EnumValueNode(name: NameNode(value: 'ID')))
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'image'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'types'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: SelectionSetNode(selections: [
                            FieldNode(
                                name: NameNode(value: 'name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null)
                          ]))
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'PokemonScreen';

  @override
  List<Object> get props => [document, operationName];
  @override
  PokemonScreen$Query parse(Map<String, dynamic> json) =>
      PokemonScreen$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ItemListScreen$Query$BaseItem with EquatableMixin {
  ItemListScreen$Query$BaseItem();

  factory ItemListScreen$Query$BaseItem.fromJson(Map<String, dynamic> json) =>
      _$ItemListScreen$Query$BaseItemFromJson(json);

  String name;

  int id;

  String image;

  String effect;

  @override
  List<Object> get props => [name, id, image, effect];
  Map<String, dynamic> toJson() => _$ItemListScreen$Query$BaseItemToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ItemListScreen$Query with EquatableMixin {
  ItemListScreen$Query();

  factory ItemListScreen$Query.fromJson(Map<String, dynamic> json) =>
      _$ItemListScreen$QueryFromJson(json);

  List<ItemListScreen$Query$BaseItem> itemsOfGeneration;

  @override
  List<Object> get props => [itemsOfGeneration];
  Map<String, dynamic> toJson() => _$ItemListScreen$QueryToJson(this);
}

class ItemListScreenQuery
    extends GraphQLQuery<ItemListScreen$Query, JsonSerializable> {
  ItemListScreenQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'ItemListScreen'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'itemsOfGeneration'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'generation'),
                    value: EnumValueNode(name: NameNode(value: 'GEN_I')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'image'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'effect'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null)
              ]))
        ]))
  ]);

  @override
  final String operationName = 'ItemListScreen';

  @override
  List<Object> get props => [document, operationName];
  @override
  ItemListScreen$Query parse(Map<String, dynamic> json) =>
      ItemListScreen$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MovesDetails$Query$Move$VerboseEffect with EquatableMixin {
  MovesDetails$Query$Move$VerboseEffect();

  factory MovesDetails$Query$Move$VerboseEffect.fromJson(
          Map<String, dynamic> json) =>
      _$MovesDetails$Query$Move$VerboseEffectFromJson(json);

  String effect;

  @override
  List<Object> get props => [effect];
  Map<String, dynamic> toJson() =>
      _$MovesDetails$Query$Move$VerboseEffectToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesDetails$Query$Move$NamedApiResource with EquatableMixin {
  MovesDetails$Query$Move$NamedApiResource();

  factory MovesDetails$Query$Move$NamedApiResource.fromJson(
          Map<String, dynamic> json) =>
      _$MovesDetails$Query$Move$NamedApiResourceFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$MovesDetails$Query$Move$NamedApiResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesDetails$Query$Move with EquatableMixin {
  MovesDetails$Query$Move();

  factory MovesDetails$Query$Move.fromJson(Map<String, dynamic> json) =>
      _$MovesDetails$Query$MoveFromJson(json);

  String name;

  List<MovesDetails$Query$Move$VerboseEffect> effectEntries;

  int power;

  int effectChance;

  int accuracy;

  int pp;

  MovesDetails$Query$Move$NamedApiResource type;

  @override
  List<Object> get props =>
      [name, effectEntries, power, effectChance, accuracy, pp, type];
  Map<String, dynamic> toJson() => _$MovesDetails$Query$MoveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesDetails$Query with EquatableMixin {
  MovesDetails$Query();

  factory MovesDetails$Query.fromJson(Map<String, dynamic> json) =>
      _$MovesDetails$QueryFromJson(json);

  MovesDetails$Query$Move moveById;

  @override
  List<Object> get props => [moveById];
  Map<String, dynamic> toJson() => _$MovesDetails$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesDetailsArguments extends JsonSerializable with EquatableMixin {
  MovesDetailsArguments({@required this.id});

  factory MovesDetailsArguments.fromJson(Map<String, dynamic> json) =>
      _$MovesDetailsArgumentsFromJson(json);

  final int id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$MovesDetailsArgumentsToJson(this);
}

class MovesDetailsQuery
    extends GraphQLQuery<MovesDetails$Query, MovesDetailsArguments> {
  MovesDetailsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'MovesDetails'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'moveById'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'moveId'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'effectEntries'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'effect'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'power'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'effectChance'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'accuracy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'pp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'MovesDetails';

  @override
  final MovesDetailsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  MovesDetails$Query parse(Map<String, dynamic> json) =>
      MovesDetails$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MovesScreen$Query$Move$NamedApiResource with EquatableMixin {
  MovesScreen$Query$Move$NamedApiResource();

  factory MovesScreen$Query$Move$NamedApiResource.fromJson(
          Map<String, dynamic> json) =>
      _$MovesScreen$Query$Move$NamedApiResourceFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$MovesScreen$Query$Move$NamedApiResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesScreen$Query$Move with EquatableMixin {
  MovesScreen$Query$Move();

  factory MovesScreen$Query$Move.fromJson(Map<String, dynamic> json) =>
      _$MovesScreen$Query$MoveFromJson(json);

  int id;

  String name;

  MovesScreen$Query$Move$NamedApiResource type;

  @override
  List<Object> get props => [id, name, type];
  Map<String, dynamic> toJson() => _$MovesScreen$Query$MoveToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MovesScreen$Query with EquatableMixin {
  MovesScreen$Query();

  factory MovesScreen$Query.fromJson(Map<String, dynamic> json) =>
      _$MovesScreen$QueryFromJson(json);

  List<MovesScreen$Query$Move> movesOfGeneration;

  @override
  List<Object> get props => [movesOfGeneration];
  Map<String, dynamic> toJson() => _$MovesScreen$QueryToJson(this);
}

class MovesScreenQuery
    extends GraphQLQuery<MovesScreen$Query, JsonSerializable> {
  MovesScreenQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'MovesScreen'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'movesOfGeneration'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'generation'),
                    value: EnumValueNode(name: NameNode(value: 'GEN_I')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'type'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'MovesScreen';

  @override
  List<Object> get props => [document, operationName];
  @override
  MovesScreen$Query parse(Map<String, dynamic> json) =>
      MovesScreen$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class PokemonDetails$Query$Pokemon$Type with EquatableMixin {
  PokemonDetails$Query$Pokemon$Type();

  factory PokemonDetails$Query$Pokemon$Type.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetails$Query$Pokemon$TypeFromJson(json);

  String name;

  @override
  List<Object> get props => [name];
  Map<String, dynamic> toJson() =>
      _$PokemonDetails$Query$Pokemon$TypeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonDetails$Query$Pokemon$Stat with EquatableMixin {
  PokemonDetails$Query$Pokemon$Stat();

  factory PokemonDetails$Query$Pokemon$Stat.fromJson(
          Map<String, dynamic> json) =>
      _$PokemonDetails$Query$Pokemon$StatFromJson(json);

  String name;

  int baseStat;

  @override
  List<Object> get props => [name, baseStat];
  Map<String, dynamic> toJson() =>
      _$PokemonDetails$Query$Pokemon$StatToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonDetails$Query$Pokemon with EquatableMixin {
  PokemonDetails$Query$Pokemon();

  factory PokemonDetails$Query$Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetails$Query$PokemonFromJson(json);

  String name;

  List<PokemonDetails$Query$Pokemon$Type> types;

  String description;

  List<PokemonDetails$Query$Pokemon$Stat> stats;

  @override
  List<Object> get props => [name, types, description, stats];
  Map<String, dynamic> toJson() => _$PokemonDetails$Query$PokemonToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonDetails$Query with EquatableMixin {
  PokemonDetails$Query();

  factory PokemonDetails$Query.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetails$QueryFromJson(json);

  PokemonDetails$Query$Pokemon pokemonById;

  @override
  List<Object> get props => [pokemonById];
  Map<String, dynamic> toJson() => _$PokemonDetails$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PokemonDetailsArguments extends JsonSerializable with EquatableMixin {
  PokemonDetailsArguments({@required this.id});

  factory PokemonDetailsArguments.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsArgumentsFromJson(json);

  final int id;

  @override
  List<Object> get props => [id];
  Map<String, dynamic> toJson() => _$PokemonDetailsArgumentsToJson(this);
}

class PokemonDetailsQuery
    extends GraphQLQuery<PokemonDetails$Query, PokemonDetailsArguments> {
  PokemonDetailsQuery({this.variables});

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'PokemonDetails'),
        variableDefinitions: [
          VariableDefinitionNode(
              variable: VariableNode(name: NameNode(value: 'id')),
              type:
                  NamedTypeNode(name: NameNode(value: 'Int'), isNonNull: true),
              defaultValue: DefaultValueNode(value: null),
              directives: [])
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'pokemonById'),
              alias: null,
              arguments: [
                ArgumentNode(
                    name: NameNode(value: 'pokemonId'),
                    value: VariableNode(name: NameNode(value: 'id')))
              ],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'types'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ])),
                FieldNode(
                    name: NameNode(value: 'description'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'stats'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'baseStat'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'PokemonDetails';

  @override
  final PokemonDetailsArguments variables;

  @override
  List<Object> get props => [document, operationName, variables];
  @override
  PokemonDetails$Query parse(Map<String, dynamic> json) =>
      PokemonDetails$Query.fromJson(json);
}
