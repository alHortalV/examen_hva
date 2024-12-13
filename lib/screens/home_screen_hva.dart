import 'package:fl_examen_moviles_ahv/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Centra todo el contenido en la pantalla
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // Asegura que el tamaño sea el mínimo necesario para el contenido
          children: [
            const FlutterLogo(
              size: 200,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(150, 40)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignInScreen()),
                );
              },
              child: const Text('Sign In'),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              style: ElevatedButton.styleFrom(fixedSize: const Size(150, 40)),
              onPressed: null,
              child: const Text('Sign Up'),
            )
          ],
        ),
      ),
    );
  }
}
