import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() goto;
  const CustomButton({Key? key, required this.text, required this.goto})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 30),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
        onPressed: goto,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              const Icon(
                Icons.arrow_right_alt_outlined,
                size: 60,
              )
            ],
          ),
        ),
      ),
    );
  }
}
