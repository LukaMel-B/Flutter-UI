import 'package:flutter/material.dart';

class ToggleBarItemsWidget extends StatelessWidget {
  const ToggleBarItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 230, 230, 230)),
            child: const Text(
              'On hold',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 126, 126, 126),
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff126FB4),
            ),
            child: const Text(
              'Payouts (15)',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 230, 230, 230)),
            child: const Text(
              'Refunds',
              style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 126, 126, 126),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
