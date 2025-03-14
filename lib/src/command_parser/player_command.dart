import 'dart:async';

import 'package:mud_thing/mud_thing.dart';

/// A command which players can use.
class PlayerCommand {
  /// Create an instance.
  const PlayerCommand({
    required this.name,
    required this.description,
    required this.command,
    this.aliases = const [],
  });

  /// The name of this command.
  final String name;

  /// The description of this command.
  final String description;

  /// The command to run.
  final FutureOr<void> Function(CommandParser parser, List<String> arguments)
  command;

  /// The aliases for this command.
  final List<String> aliases;
}
