import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:mud_thing/mud_thing.dart';

/// The console command.
class ConsoleCommand extends PlayerCommand {
  @override
  String get name => 'console';
  @override
  String get description => 'Show the settings for your console.';
  @override
  FutureOr<void> run(final CommandParser parser, final List<String> arguments) {
    parser.outputLines([
      'Number of lines: ${stdout.terminalLines}.',
      'Terminal columns: ${stdout.terminalColumns}.',
      'Escape sequences supported: ${stdout.supportsAnsiEscapes}.',
      'Line terminator: ${jsonEncode(stdout.lineTerminator)}.',
      'Encoding: ${stdout.encoding.name}.',
    ]);
  }
}
