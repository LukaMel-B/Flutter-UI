import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text(
            'CUSTOMER DETAILS',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          ),
          trailing: TextButton.icon(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(Icons.share),
              label: const Text('SHARE')),
        ),
        ListTile(
          title: const Text(
            'Deepa',
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          subtitle: const Text(
            '+91-987592432',
            style: TextStyle(fontSize: 15),
          ),
          trailing: Wrap(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.phone_callback_rounded,
                size: 35,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.whatsapp,
                color: Colors.green,
                size: 35,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Address',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'D 1101 Chartered Beverly\nHills ,Subramanyapuram P.O',
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 86, 85, 85)),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'City',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 150,
                  ),
                  const Text(
                    'Pincode',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Bangalore',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 86, 83, 83)),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  const Text(
                    '56938',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 86, 83, 83)),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Payments',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  const Text(
                    'Online',
                    style: TextStyle(
                        fontSize: 17, color: Color.fromARGB(255, 86, 83, 83)),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 188, 255, 190)),
                    child: const Text(
                      ' PAID ',
                      style: TextStyle(color: Color.fromARGB(255, 22, 167, 27)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
