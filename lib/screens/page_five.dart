import 'package:flutter/material.dart';
import 'package:ui_design/widgets/additional_info_widget.dart';
import 'package:ui_design/widgets/custom_card_widget.dart';
import 'package:ui_design/widgets/page_five_widget1.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff126FB4),
        title: const Text('Order#1688068'),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('May 31, 05:43 PM'),
              const SizedBox(
                width: 90,
              ),
              TextButton.icon(
                onPressed: null,
                icon: const Icon(
                  Icons.radio_button_checked_outlined,
                  color: Colors.blue,
                ),
                label: const Text(
                  'Delivered',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.black,
              height: 10,
            ),
          ),
          const CustomWidget(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.black,
              height: 30,
            ),
          ),
          const CustomerCard(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.black,
              height: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: AdditionalInfoWidget(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: 350,
                  child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.blue)),
                      child: const Text('Share receipt')))
            ],
          )
        ],
      )),
    );
  }
}
