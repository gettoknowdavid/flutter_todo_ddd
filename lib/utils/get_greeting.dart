import 'package:flutter/material.dart';

String get greeting {
  TimeOfDay time = TimeOfDay.now();

  if (time.hour < 12) {
    return 'Good morning!';
  } else if (time.hour < 18) {
    return 'Good evening!';
  } else {
    return 'Good night!';
  }
}
