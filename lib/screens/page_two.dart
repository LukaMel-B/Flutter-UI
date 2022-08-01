import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design/widgets/bottom_bar_widget.dart';
import 'package:ui_design/widgets/list_values.dart';
import 'package:ui_design/widgets/store_widget.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  ListValues data = ListValues();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 10,
        child: SizedBox(
          height: 50,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BottomBarWidget(icon: FontAwesomeIcons.house, title: 'Home'),
              BottomBarWidget(
                  icon: FontAwesomeIcons.fileInvoiceDollar, title: 'Orders'),
              BottomBarWidget(
                  icon: FontAwesomeIcons.boxesStacked, title: 'Product'),
              BottomBarWidget(
                  icon: FontAwesomeIcons.layerGroup, title: 'Manage'),
              BottomBarWidget(icon: FontAwesomeIcons.user, title: 'Account'),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xffF2F2F2),
      appBar: AppBar(
        backgroundColor: const Color(0xff126FB4),
        title: const Text('Manage Store'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.builder(
          itemCount: 7,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 20,
              childAspectRatio: 1.35,
              mainAxisSpacing: 20),
          itemBuilder: (BuildContext context, int index) {
            return StoreCardWidget(
              color: data.color[index],
              newIcon: (index == 6)
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 4),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Text(
                        'NEW',
                        style: TextStyle(color: Colors.white),
                      ))
                  : const SizedBox(),
              icon: data.p2Icon[index],
              title: data.title2[index],
            );
          },
        ),
      ),
    );
  }
}
