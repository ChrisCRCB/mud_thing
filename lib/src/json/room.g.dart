// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
  id: json['id'] as String,
  name: json['name'] as String? ?? 'Untitled Room',
  description: json['description'] as String?,
  exits: (json['exits'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(
      $enumDecode(_$ExitDirectionEnumMap, k),
      RoomExit.fromJson(e as Map<String, dynamic>),
    ),
  ),
);

Map<String, dynamic> _$RoomToJson(Room instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'exits': instance.exits.map(
    (k, e) => MapEntry(_$ExitDirectionEnumMap[k]!, e),
  ),
};

const _$ExitDirectionEnumMap = {
  ExitDirection.north: 'north',
  ExitDirection.northeast: 'northeast',
  ExitDirection.east: 'east',
  ExitDirection.southeast: 'southeast',
  ExitDirection.south: 'south',
  ExitDirection.southwest: 'southwest',
  ExitDirection.west: 'west',
  ExitDirection.northwest: 'northwest',
  ExitDirection.enter: 'enter',
  ExitDirection.exit: 'exit',
  ExitDirection.out: 'out',
};
