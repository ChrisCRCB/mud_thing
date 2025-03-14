import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mud_thing/mud_thing.dart';

/// A parser for commands.
class CommandParser {
  /// Create an instance.
  CommandParser(this.world) : commands = [], _running = false {
    commands.addAll([
      PlayerCommand(
        name: 'quit',
        description: 'Quit the game.',
        command: (final parser, final arguments) {
          CommandError.emptyArguments(arguments);
          parser.shutdown();
        },
        aliases: ['@quit', 'shutdown', '@shutdown'],
      ),
      PlayerCommand(
        name: 'console',
        description: 'Shows the height and width of the console.',
        command: (final parser, final arguments) {
          outputText('Number of lines: ${stdout.terminalLines}.');
          outputText('Terminal columns: ${stdout.terminalColumns}.');
          outputText(
            'Escape sequences supported: ${stdout.supportsAnsiEscapes}.',
          );
          outputText('Line terminator: ${jsonEncode(stdout.lineTerminator)}.');
          outputText('Encoding: ${stdout.encoding.name}.');
        },
        aliases: ['@console'],
      ),
    ]);
  }

  /// Whether the parser is running.
  bool _running;

  /// The commands to use.
  final List<PlayerCommand> commands;

  /// The world to use.
  final World world;

  /// Write [text] to [stdout].
  ///
  /// If [end] is `null`, then [Platform.lineTerminator] will be used.
  void outputText(final String text, {final String? end}) =>
      stdout
        ..write(text)
        ..write(end ?? Platform.lineTerminator);

  /// Split [input] into a list of [String]s.
  ///
  /// For example:
  /// - "Hello world" = ["hello", "world"]
  /// - 'Hello "world of humans"' = ["Hello", '"world of humans"']
  /// - "It's a beautiful day" = ["It's", "a", "beautiful", "day"]
  List<String> splitInput(final String input) {
    if (input.isEmpty) {
      return [];
    }
    final regex = RegExp(r'"([^"]+)"|(\S+)');
    final matches = regex.allMatches(input);

    return matches
        .map((final match) => match.group(1) ?? match.group(2)!)
        .toList();
  }

  /// Handle a command from [input].
  FutureOr<void> handleCommand(final String input) async {
    final arguments = splitInput(input);
    if (arguments.isEmpty) {
      return; // Empty command.
    }
    try {
      final commandName = arguments.removeAt(0);
      for (final command in commands) {
        if (command.name == commandName ||
            command.aliases.contains(commandName)) {
          return command.command(this, arguments);
        }
      }
      throw CommandError(world.commandNotFound);
    } on CommandError catch (e) {
      outputText(e.message);
    }
  }

  /// Shutdown the game.
  void shutdown() {
    _running = false;
    outputText(world.shutdownMessage);
  }

  /// Run the world.
  Future<void> run() async {
    if (_running) {
      throw UnsupportedError('This world is already running.');
    }
    _running = true;
    outputText(world.welcomeMessage);
    while (_running) {
      outputText('${world.name}> ', end: '');
      final line = stdin.readLineSync();
      if (line == null) {
        outputText('Received null line for some reason. This may be a bug.');
        continue;
      }
      await handleCommand(line);
    }
  }
}
