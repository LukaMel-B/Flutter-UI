import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final Icon lead;
  final String text;
  final Widget trail;
  const ListTileWidget(
      {Key? key, required this.lead, required this.text, required this.trail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: ListTile(
        leading: lead,
        title: Text(
          text,
          style: const TextStyle(fontSize: 18),
        ),
        trailing: trail,
      ),
    );
  }
}
