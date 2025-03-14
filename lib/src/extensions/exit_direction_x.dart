import 'package:mud_thing/mud_thing.dart';

/// Useful extension methods for exit directions.
extension ExitDirectionX on ExitDirection {
  /// Get the opposing exit.
  ExitDirection get opposite => switch (this) {
    ExitDirection.north => ExitDirection.south,
    ExitDirection.northeast => ExitDirection.southwest,
    ExitDirection.east => ExitDirection.west,
    ExitDirection.southeast => ExitDirection.northwest,
    ExitDirection.south => ExitDirection.north,
    ExitDirection.southwest => ExitDirection.northeast,
    ExitDirection.west => ExitDirection.east,
    ExitDirection.northwest => ExitDirection.southeast,
    ExitDirection.enter => ExitDirection.exit,
    ExitDirection.exit => ExitDirection.enter,
    ExitDirection.out => ExitDirection.enter,
  };
}
