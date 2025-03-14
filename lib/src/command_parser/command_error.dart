import 'package:mud_thing/src/extensions/_extensions.dart';

/// There was an error with a command.
class CommandError implements Exception {
  /// Create an instance.
  const CommandError(this.message);

  /// The message to show.
  final String message;

  /// Throw an instance if [arguments] are not empty.
  static void emptyArguments(
    final List<String> arguments, {
    final String message = 'This command accepts no arguments.',
  }) {
    if (arguments.isNotEmpty) {
      throw CommandError(message);
    }
  }

  /// Throw an error if [arguments] is not exactly [length] elements long.
  void exactLength(
    final List<String> arguments,
    final int length, {
    final String? message,
  }) {
    if (arguments.length != length) {
      if (message == null) {
        final plural = length.getPlural('argument');
        throw CommandError(
          'Expected $length $plural, got ${arguments.length}.',
        );
      }
      throw CommandError(message);
    }
  }

  /// Throw an error if the length of [arguments] is less than [min] or more
  /// than [max].
  void betweenLength(
    final List<String> arguments,
    final int min,
    final int max, {
    final String? message,
  }) {
    if (arguments.length < min || arguments.length > max) {
      if (message == null) {
        final minPlural = min.getPlural('argument');
        final maxPlural = max.getPlural('argument');
        throw CommandError(
          // ignore: lines_longer_than_80_chars
          'Expected at least $min $minPlural, but no more than $max $maxPlural.',
        );
      }
      throw CommandError(message);
    }
  }
}
