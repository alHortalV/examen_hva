import 'package:fl_examen_moviles_ahv/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              children: [
                const FlutterLogo(
                  size: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()),
                    );
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 10),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Sign Up'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
