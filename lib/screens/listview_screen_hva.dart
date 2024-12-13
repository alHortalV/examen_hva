import 'package:fl_examen_moviles_ahv/screens/screens.dart';
import 'package:fl_examen_moviles_ahv/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg',
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const Column(
            children: [
              CustomListView(
                title: 'Pistas',
                icon: Icons.sports_basketball,
                destinationScreen: PistasScreen(),
              ),
              Divider(),
              CustomListView(
                title: 'Monitores',
                icon: Icons.group_sharp,
                destinationScreen: MonitoresScreen(),
              ),
            ],
          ),
          const Divider(),
          ListTile(
            title: const Text('Reservas'),
            leading: const Icon(Icons.book_online_outlined),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Aviso'),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'El sistema de reservas está deshabilitado en estos momentos.',
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: FlutterLogo(
                            size: 100,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Cancelar'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
