import 'package:fl_examen_moviles_ahv/models/models.dart';
import 'package:fl_examen_moviles_ahv/screens/screens.dart';
import 'package:flutter/material.dart';

import '../models/menu_options.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home',
      icon: Icons.home,
      screen: const HomeScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }
}
