/// Useful extension methods for lists of strings.
extension ListStringX on List<String> {
  /// Return an english list.
  String englishList({
    final String separator = ', ',
    final String andString = 'and ',
  }) {
    if (length == 1) {
      return single;
    }
    final lastString = '$andString${this[length - 1]}';
    return [...sublist(0, length - 1), lastString].join(separator);
  }
}
