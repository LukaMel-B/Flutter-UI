import 'package:flutter/material.dart';
import 'package:ui_design/widgets/home_button.dart';
import 'package:ui_design/widgets/list_values.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ListValues data = ListValues();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return CustomButton(
          goto: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => data.nav[index]),
            );
          },
          text: data.title[index],
        );
      },
      itemCount: 6,
    );
  }
}
