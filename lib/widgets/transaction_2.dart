import 'package:flutter/material.dart';

class TransactionTrailingWiget extends StatelessWidget {
  const TransactionTrailingWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '\u{20B9}799',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Color.fromARGB(255, 23, 127, 211)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: SizedBox(
              width: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.green,
                  ),
                  Text(
                    'Successful',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
