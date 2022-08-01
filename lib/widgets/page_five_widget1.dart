import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design/widgets/additional_info_widget.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('1 ITEM'),
            const SizedBox(
              width: 175,
            ),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.receipt),
                label: const Text('RECEIPT')),
          ],
        ),
        Column(
          children: [
            ListTile(
              leading: ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 44,
                  minHeight: 44,
                  maxWidth: 64,
                  maxHeight: 64,
                ),
                child: Image.asset('assets/images/img1.jpg', fit: BoxFit.cover),
              ),
              title: const Text('Explore | Men | Combo'),
              subtitle: const Text('1 piece\nSize: XL'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 50,
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.one,
                      size: 15,
                    ),
                    label: const Text('X ₹799')),
                const SizedBox(
                  width: 155,
                ),
                const Text('₹799'),
              ],
            )
          ],
        ),
        const SizedBox(
          width: 360,
          child: Divider(
            color: Colors.black,
            height: 30,
          ),
        ),
        const ItemsTotalWidget(),
      ],
    );
  }
}
