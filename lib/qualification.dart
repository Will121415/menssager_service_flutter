import 'package:flutter/material.dart';

class Qualification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Items('Cumplimiento', '0.0'),
        Items('Responsabilidad', '0.0'),
        Items('Amabilidad', '0.0'),
      ],
    );
  }
}

class Items extends StatelessWidget {
  String title, qualification;
  Items(this.title, this.qualification);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.title),
        SizedBox(
          height: 5,
        ),
        CircleAvatar(child: Text(this.qualification)),
      ],
    );
  }
}
