import 'dart:developer';

import 'package:flutter/foundation.dart';

void debugPrint(Object? object) {
  if (kDebugMode) {
    log(object.toString());
  }
}
