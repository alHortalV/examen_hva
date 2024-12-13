import 'package:flutter/material.dart';

class CustomPista extends StatelessWidget {
  const CustomPista({
    super.key,
    required this.imageUrl,
    required this.nombre,
  });

  final String imageUrl;
  final String nombre;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen con loading
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          // Nombre de la pista
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              nombre,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 4),
          // Descripción Lorem Ipsum por defecto
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nisl eros, pulvinar facilisis justo mollis.',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 8),
          // Botón Reservar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                // Acción de reserva aquí
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Botón reservar pulsado'),
                  ),
                );
              },
              child: const Text('Reservar'),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
