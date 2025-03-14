import 'package:mud_thing/mud_thing.dart';

Future<void> main(final List<String> arguments) async {
  final world = World();
  final parser = CommandParser(world);
  await parser.run();
}
