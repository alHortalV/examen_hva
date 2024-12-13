import 'package:fl_examen_moviles_ahv/routes/app_routes.dart';
import 'package:fl_examen_moviles_ahv/screens/home_screen_hva.dart';
import 'package:fl_examen_moviles_ahv/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//home_screen_hva.dart
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: const HomeScreen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        theme: AppTheme.lightTheme);
  }
}
