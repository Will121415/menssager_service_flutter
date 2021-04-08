import 'package:flutter/material.dart';

class LicensePlate extends StatelessWidget {
  String plateNumber;
  LicensePlate(this.plateNumber);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      color: Colors.yellowAccent,
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        plateNumber,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
