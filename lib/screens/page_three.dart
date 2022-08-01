import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_design/widgets/amount_widget.dart';
import 'package:ui_design/widgets/payment_method.dart';
import 'package:ui_design/widgets/payment_widget1.dart';
import 'package:ui_design/widgets/toggle_bar_widget.dart';
import 'package:ui_design/widgets/transaction_details_widgets.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        backgroundColor: const Color(0xff126FB4),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.circleInfo,
                //color: Color(0xff126FB4),
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: 700,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: const [
              TransactionLimitWiget(),
              SizedBox(
                height: 10,
              ),
              PaymentMethodWidget(
                subTitle: 'Online Payment',
                title: 'Default Method',
              ),
              PaymentMethodWidget(
                subTitle: 'Bank Account',
                title: 'Payment Profile',
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  thickness: 1.2,
                ),
              ),
              PaymentMethodWidget(
                subTitle: 'Life Time',
                title: 'Payment Overview',
              ),
              AmountWidget(),
              SizedBox(
                height: 20,
              ),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ToggleBarItemsWidget(),
              TransactionDetialsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
