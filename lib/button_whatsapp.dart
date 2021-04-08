import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonWhatsapp extends StatefulWidget {
  String whatsapp;
  ButtonWhatsapp(this.whatsapp);
  @override
  State<StatefulWidget> createState() => _ButtonWhatsapp();
}

class _ButtonWhatsapp extends State<ButtonWhatsapp> {
  String protocol = 'https://';
  String domain = 'wa.me/'; //dominio acortado de whatsapp
  String countryCode = '57'; //codigo de Colombia
  String message = '?text=Buen dia, usted esta contratado...!';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FloatingActionButton(
          backgroundColor: Color(0xFF11DA53),
          mini: true,
          tooltip: 'whatsapp',
          onPressed: () async {
            await launch(
                protocol + domain + countryCode + widget.whatsapp + message);
          },
          child: FaIcon(FontAwesomeIcons.whatsapp),
        ),
        SizedBox(height: 5),
        Text('WhatsApp'),
      ],
    );
  }
}
