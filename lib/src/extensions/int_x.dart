/// Useful extensions for integers.
extension IntX on int {
  /// Return a suitable plural.
  String getPlural(final String single, {final String? plural}) {
    if (this == 1) {
      return single;
    } else if (plural == null) {
      return '${single}s';
    }
    return single;
  }
}
