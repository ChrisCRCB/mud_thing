import 'dart:async';

import 'package:mud_thing/mud_thing.dart';

/// The exits command.
class ExitsCommand extends PlayerCommand {
  @override
  String get name => 'exits';
  @override
  String get description => 'Show the exits in the current room.';
  @override
  FutureOr<void> run(final CommandParser parser, final List<String> arguments) {
    // TODO: implement run
    throw UnimplementedError();
  }
}
