import 'package:flutter/material.dart';

class ProductCards extends StatelessWidget {
  final int price;
  final String productName;
  final String productImage;

  const ProductCards(
      {Key? key,
      required this.price,
      required this.productName,
      required this.productImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 10, 30),
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(productImage), fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(productName),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          '1 piece',
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      Text('₹$price',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text('in stock',
                            style: TextStyle(
                                color: Color.fromARGB(255, 64, 248, 70))),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Column(
                  children: [
                    const Icon(Icons.more_vert),
                    Container(
                      height: 25,
                    ),
                    Switch(value: true, onChanged: (v) {})
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 2,
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.share_outlined, color: Colors.black),
              label: const Text(
                'Share Product',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
