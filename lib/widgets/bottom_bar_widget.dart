import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const BottomBarWidget({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Icon(
          icon,
          color: (title == 'Manage')
              ? const Color(0xff126FB4)
              : const Color.fromARGB(255, 184, 184, 184),
          size: 20,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
              color: (title == 'Manage')
                  ? const Color(0xff126FB4)
                  : const Color.fromARGB(255, 184, 184, 184),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
