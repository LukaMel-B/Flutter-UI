import 'package:flutter/material.dart';
import 'package:ui_design/widgets/list_tile_widget.dart';
import 'package:ui_design/widgets/list_values.dart';

// ignore: must_be_immutable
class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  ListValues data = ListValues();

  bool value = true;
  @override
  Widget build(BuildContext context) {
    final trail = [
      const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black38,
      ),
      const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black38,
      ),
      Switch(
        value: value,
        onChanged: (value) => setState(
          () {
            this.value = value;
          },
        ),
      ),
      const SizedBox(),
      const SizedBox(),
      const SizedBox(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff126FB4),
        title: const Text('Additional Information'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 650,
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTileWidget(
                    lead: data.lead[index],
                    text: data.text[index],
                    trail: trail[index]);
              },
              itemCount: 6,
            ),
          ),
          Column(
            children: const [
              Text(
                'Version',
                style: TextStyle(color: Colors.black26, fontSize: 16),
              ),
              Text(
                '2.4.2',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
