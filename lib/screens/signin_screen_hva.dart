import 'package:fl_examen_moviles_ahv/screens/screens.dart';
import 'package:fl_examen_moviles_ahv/widgets/widgets.dart';

import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {};

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: FlutterLogo(
                    size: 200,
                  ),
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  labelText: 'Usuario',
                  suffixIcon: Icons.group_outlined,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  capitalization: TextCapitalization.none,
                  formProperty: 'usuario',
                  formValues: formValues,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'Mínimo 6 caracteres';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                CustomTextFormField(
                  labelText: 'Contraseña',
                  obscureText: true,
                  capitalization: TextCapitalization.none,
                  formProperty: 'contraseña',
                  formValues: formValues,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.length < 6) {
                      return 'Mínimo 6 caracteres';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() ?? false) {
                      print('Usuario: ${formValues['usuario']}');
                      print('Contraseña: ${formValues['contraseña']}');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListViewScreen()),
                      );
                    } else {
                      print('Por favor, completa los campos correctamente');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 40),
                  ),
                  child: const Text('Sign In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
