import 'package:flutter/material.dart';

class StoreCardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final Icon icon;
  final Widget newIcon;
  const StoreCardWidget(
      {Key? key,
      required this.title,
      required this.color,
      required this.icon,
      required this.newIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: color, borderRadius: BorderRadius.circular(5)),
                  child: icon,
                ),
                newIcon,
              ],
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
