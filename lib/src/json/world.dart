import 'package:json_annotation/json_annotation.dart';
import 'package:mud_thing/mud_thing.dart';

part 'world.g.dart';

/// A world to play.
@JsonSerializable()
class World {
  /// Create an instance.
  World({
    this.name = 'Untitled World',
    this.welcomeMessage = 'Welcome to a new world.',
    this.commandNotFound = "I don't understand that.",
    this.shutdownMessage = 'Come back soon.',
    final List<Room>? rooms,
  }) : rooms = rooms ?? [Room(id: newId(), name: 'The First Room')];

  /// Create an instance from a JSON object.
  factory World.fromJson(final Map<String, dynamic> json) =>
      _$WorldFromJson(json);

  /// The name of the world.
  String name;

  /// The message to print when this world loads.
  String welcomeMessage;

  /// The message to show when an invalid command name is used.
  String commandNotFound;

  /// The message to show when the world is shutdown.
  String shutdownMessage;

  /// The rooms in this world.
  final List<Room> rooms;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$WorldToJson(this);
}
