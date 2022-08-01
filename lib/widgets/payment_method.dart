import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  const PaymentMethodWidget(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: (subTitle == 'Life Time')
              ? const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                )
              : const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: Text(
            subTitle,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          label: (subTitle == 'Life Time')
              ? const Icon(
                  FontAwesomeIcons.angleDown,
                  color: Colors.black38,
                )
              : const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.black38,
                ),
        ),
      ],
    );
  }
}
