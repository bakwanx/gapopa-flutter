import 'package:flutter/material.dart';

enum TabType { home, search, profile }

extension TabItem on TabType {
  Icon get icon {
    switch (this) {
      case TabType.home:
        return const Icon(Icons.home, size: 25);
      case TabType.search:
        return const Icon(Icons.bookmark, size: 25);
      case TabType.profile:
        return Icon(Icons.person, size: 25);
    }
  }

  String get title {
    switch (this) {
      case TabType.home:
        return "Home";
      case TabType.search:
        return "Save";
      case TabType.profile:
        return "Profile";
    }
  }
}
