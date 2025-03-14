import 'dart:async';

import 'package:mud_thing/mud_thing.dart';

/// The quit command.
class QuitCommand extends PlayerCommand {
  /// Create an instance.
  QuitCommand();
  @override
  String get name => 'quit';
  @override
  String get description => 'Quit the game.';
  @override
  FutureOr<void> run(final CommandParser parser, final List<String> arguments) {
    CommandError.emptyArguments(arguments);
    parser.shutdown();
  }

  @override
  List<String> get aliases => ['@quit', 'shutdown', '@shutdown'];
}
