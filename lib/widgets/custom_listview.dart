import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget destinationScreen;

  const CustomListView({
    super.key,
    required this.title,
    required this.icon,
    required this.destinationScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destinationScreen),
        );
      },
    );
  }
}
