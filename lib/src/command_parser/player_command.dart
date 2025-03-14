import 'dart:async';

import 'package:mud_thing/mud_thing.dart';

/// A command which players can use.
abstract class PlayerCommand {
  /// Create an instance.
  const PlayerCommand();

  /// The name of this command.
  String get name;

  /// The description of this command.
  String get description;

  /// The command to run.
  FutureOr<void> run(final CommandParser parser, final List<String> arguments);

  /// The aliases for this command.
  List<String> get aliases => [];
}
