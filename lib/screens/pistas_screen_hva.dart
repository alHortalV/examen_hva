import 'package:fl_examen_moviles_ahv/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
  const PistasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Pistas'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          CustomPista(
            imageUrl:
                'https://img.goodfon.com/original/1920x1080/b/69/starkiller-by-sidezeo-star-wars-fog-sith-startroopers-weapon.jpg',
            nombre: 'Pista de pádel',
          ),
          CustomPista(
            imageUrl:
                'https://lumiere-a.akamaihd.net/v1/images/darth-vader-main_4560aff7.jpeg?region=0%2C67%2C1280%2C720',
            nombre: 'Piscina cubierta',
          ),
          CustomPista(
            imageUrl:
                'https://images.squarespace-cdn.com/content/v1/5fbc4a62c2150e62cfcb09aa/1654399267221-JRCTJLTTJ4O9VSOH5SHJ/darth-revan-star-wars-closeup.jpg',
            nombre: 'Campo de baloncesto',
          ),
        ],
      ),
    );
  }
}
