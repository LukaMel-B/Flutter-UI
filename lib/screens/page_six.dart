import 'package:flutter/material.dart';
import 'package:ui_design/widgets/product_card.dart';

class PageSix extends StatelessWidget {
  const PageSix({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30.0), // here the desired height
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    'Products',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  ColoredBox(
                    color: Colors.white,
                    child: SizedBox(
                      height: 3,
                      width: 140,
                    ),
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xff126FB4),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  size: 35,
                )),
          )
        ],
        title: const Text('Catalogue'),
      ),
      backgroundColor: const Color.fromARGB(247, 244, 244, 244),
      body: SafeArea(
        child: ListView.separated(
          itemCount: 8,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox();
          },
          itemBuilder: (BuildContext context, int index) {
            var productName = 'Couch Potato | Women...';
            var productImage = 'assets/images/img1.jpg';
            var price = 799;
            return ProductCards(
                price: price,
                productName: productName,
                productImage: productImage);
          },
        ),
      ),
    );
  }
}
