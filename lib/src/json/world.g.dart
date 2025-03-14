// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'world.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

World _$WorldFromJson(Map<String, dynamic> json) => World(
  name: json['name'] as String? ?? 'Untitled World',
  welcomeMessage:
      json['welcomeMessage'] as String? ?? 'Welcome to a new world.',
  commandNotFound:
      json['commandNotFound'] as String? ?? "I don't understand that.",
  shutdownMessage: json['shutdownMessage'] as String? ?? 'Come back soon.',
  rooms:
      (json['rooms'] as List<dynamic>?)
          ?.map((e) => Room.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$WorldToJson(World instance) => <String, dynamic>{
  'name': instance.name,
  'welcomeMessage': instance.welcomeMessage,
  'commandNotFound': instance.commandNotFound,
  'shutdownMessage': instance.shutdownMessage,
  'rooms': instance.rooms,
};
