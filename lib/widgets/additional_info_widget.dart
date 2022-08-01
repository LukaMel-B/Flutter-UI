import 'package:flutter/material.dart';

class AdditionalInfoWidget extends StatelessWidget {
  const AdditionalInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ADDITIONAL INFORMATION',
          style: TextStyle(
              color: Colors.black.withOpacity(0.60),
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'State',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Karnataka',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.60),
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )
            ],
          ),
        ),
        const Text(
          'Email',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          'exampleemail@example.com',
          style: TextStyle(
              color: Colors.black.withOpacity(0.60),
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ItemsTotalWidget extends StatelessWidget {
  const ItemsTotalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Item Total'),
              SizedBox(
                width: 250,
              ),
              Text('₹799')
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text('Delivery'),
                SizedBox(
                  width: 265,
                ),
                Text(
                  'FREE',
                  style: TextStyle(color: Color.fromARGB(255, 54, 235, 60)),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text('Grand Total',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(
                width: 245,
              ),
              Text('₹799', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}
