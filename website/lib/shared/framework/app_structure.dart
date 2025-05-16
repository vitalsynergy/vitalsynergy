import 'package:flutter/material.dart';

/// Not using enum, because some routes may be dynamic.
class AppRoutes {
  static const String home = '/';
}

const kExperiments = bool.fromEnvironment('experiments', defaultValue: false);

class FeatureFlags {
  // static const bool exploreScreen = kExperiments;
}

class AppMenuItem {
  const AppMenuItem(this.route, this.label);

  final String route;
  final String label;
}

void push(String route, BuildContext context) {
  Navigator.of(context).pushNamed(route);
}
