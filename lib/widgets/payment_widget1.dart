import 'package:flutter/material.dart';

class TransactionLimitWiget extends StatelessWidget {
  const TransactionLimitWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Transaction Limit',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'A free limit upto which you will recieve the online payments directly in your bank',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                color: Color.fromARGB(255, 20, 118, 194),
                backgroundColor: Color.fromARGB(255, 208, 208, 208),
                value: 0.4,
                minHeight: 8,
              ),
            ),
          ),
          const Text(
            '36,668 left out of \u{20B9}50,000',
            style: TextStyle(color: Colors.black38),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xff126FB4)),
            ),
            onPressed: () {},
            child: const Text(
              'Increase limit',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
