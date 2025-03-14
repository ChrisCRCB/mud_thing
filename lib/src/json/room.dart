import 'package:json_annotation/json_annotation.dart';
import 'package:mud_thing/mud_thing.dart';

part 'room.g.dart';

/// A room in a [World].
@JsonSerializable()
class Room {
  /// Create an instance.
  Room({this.name = 'Untitled Room', this.description});

  /// Create an instance from a JSON object.
  factory Room.fromJson(final Map<String, dynamic> json) =>
      _$RoomFromJson(json);

  /// The name of this room.
  String name;

  /// The description of this room.
  String? description;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
