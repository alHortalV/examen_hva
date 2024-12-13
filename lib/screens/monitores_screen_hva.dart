import 'package:fl_examen_moviles_ahv/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
  const MonitoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Monitores'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg',
              ),
            ),
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomMonitores(
              nombre: 'Rafa Nadal',
              imageUrl:
                  'https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg',
            ),
            CustomMonitores(
              nombre: 'Gisela Pulido',
              imageUrl:
                  'https://pbs.twimg.com/profile_images/1701651173822898176/v_01vBPF_400x400.jpg',
            ),
            CustomMonitores(
              nombre: 'Mireia Belmonte',
              imageUrl:
                  'https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
