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
        throw CommandError(
          'Expected $length arguments, got ${arguments.length}.',
        );
      }
      throw CommandError(message);
    }
  }
}
