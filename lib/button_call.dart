import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonCall extends StatefulWidget {
  String phone;
  ButtonCall(this.phone);
  @override
  State<StatefulWidget> createState() => _ButtonCall();
}

class _ButtonCall extends State<ButtonCall> {
  String callString = 'tel: +57';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          heroTag: 'bt1',
          backgroundColor: Color(0xFF238AE6),
          mini: true,
          tooltip: 'Call',
          child: FaIcon(FontAwesomeIcons.phoneAlt),
          onPressed: () async {
            await launch(callString + widget.phone);
          },
        ),
        SizedBox(
          height: 5,
        ),
        Text('Telefono')
      ],
    );
  }
}
