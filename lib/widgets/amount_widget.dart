import 'package:flutter/material.dart';

class AmountWidget extends StatelessWidget {
  const AmountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 249, 133, 0),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('AMOUNT ON HOLD'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\u{20B9}0',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 42, 174, 46),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('AMOUNT RECIEVED'),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '\u{20B9}13,332',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
