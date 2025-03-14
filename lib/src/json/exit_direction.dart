/// Possible exit directions.
enum ExitDirection {
  /// North.
  north,

  /// Northeast.
  northeast,

  /// East.
  east,

  /// Southeast.
  southeast,

  /// South.
  south,

  /// Southwest.
  southwest,

  /// West.
  west,

  /// Northwest.
  northwest,

  /// Enter.
  enter,

  /// Exit.
  exit,

  /// Out.
  out,
}

/// Exit aliases.
const exitAliases = <String, ExitDirection>{
  'n': ExitDirection.north,
  'ne': ExitDirection.northeast,
  'e': ExitDirection.east,
  'se': ExitDirection.southeast,
  's': ExitDirection.south,
  'sw': ExitDirection.southwest,
  'w': ExitDirection.west,
  'nw': ExitDirection.northwest,
  'en': ExitDirection.enter,
  'ex': ExitDirection.exit,
  'o': ExitDirection.out,
  'ou': ExitDirection.out,
};
