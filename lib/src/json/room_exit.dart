import 'package:json_annotation/json_annotation.dart';

part 'room_exit.g.dart';

/// An exit between two rooms.
@JsonSerializable()
class RoomExit {
  /// Create an instance.
  RoomExit({required this.targetRoomId, this.useMessage});

  /// Create an instance from a JSON object.
  factory RoomExit.fromJson(final Map<String, dynamic> json) =>
      _$RoomExitFromJson(json);

  /// The ID of the room on the other side of this exit.
  final String targetRoomId;

  /// The message to show when using this exit.
  String? useMessage;

  /// Convert an instance to JSON.
  Map<String, dynamic> toJson() => _$RoomExitToJson(this);
}
