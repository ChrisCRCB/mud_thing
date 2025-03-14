import 'package:uuid/uuid.dart';

/// The UUID generator to use.
const uuid = Uuid();

/// Get a new ID.
String newId() => uuid.v4();
