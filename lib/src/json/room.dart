import 'package:json_annotation/json_annotation.dart';
import 'package:mud_thing/mud_thing.dart';

part 'room.g.dart';

/// A room in a [World].
@JsonSerializable()
class Room {
  /// Create an instance.
  Room({
    required this.id,
    this.name = 'Untitled Room',
    this.description,
    final Map<ExitDirection, RoomExit>? exits,
  }) : exits = exits ?? {};

  /// Create an instance from a JSON object.
  factory Room.fromJson(final Map<String, dynamic> json) =>
      _$RoomFromJson(json);

  /// The ID of this room.
  final String id;

  /// The name of this room.
  String name;

  /// The description of this room.
  String? description;

  /// The exits from this room.
  final Map<ExitDirection, RoomExit> exits;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
