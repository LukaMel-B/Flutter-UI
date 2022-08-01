import 'package:flutter/material.dart';
import 'package:ui_design/widgets/transaction_2.dart';

class TransactionDetialsWidget extends StatelessWidget {
  const TransactionDetialsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContextcontext, index) {
          return ListTile(
            leading: SizedBox(
                height: 50, child: Image.asset('assets/images/img1.jpg')),
            title: Text(
              'Order #1688068',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(bottom: 10.0, top: 5),
              child: Text(
                'Jul 12,02:06 PM',
                style: TextStyle(fontSize: 13),
              ),
            ),
            trailing: TransactionTrailingWiget(),
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\u{20B9}799 deposited to 58860200000138',
                style: TextStyle(
                    fontSize: 11,
                    fontStyle: FontStyle.italic,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 5,
              ),
              Divider()
            ],
          );
        },
      ),
    );
  }
}
