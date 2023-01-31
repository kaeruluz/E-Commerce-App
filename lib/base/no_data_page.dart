import 'package:flutter/material.dart';

class NoDAtaPage extends StatelessWidget {
  final String text;
  final String imgPath;
  const NoDAtaPage(
      {super.key,
      required this.text,
      this.imgPath = "assets/image/emptyCart.png"});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          imgPath,
          height: MediaQuery.of(context).size.height * 0.32,
          width: MediaQuery.of(context).size.width * 0.32,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: MediaQuery.of(context).size.height * 0.025,
              color: Theme.of(context).disabledColor),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
