import 'package:flutter/material.dart';

class CustomMonitores extends StatelessWidget {
  final String nombre;
  final String imageUrl;

  const CustomMonitores(
      {super.key, required this.nombre, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 8),
          Text(
            nombre,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
