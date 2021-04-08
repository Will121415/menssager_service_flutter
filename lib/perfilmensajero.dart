import 'package:flutter/material.dart';
import 'package:messenger_service/button_whatsapp.dart';
import 'package:messenger_service/contact_and_license_plate.dart';
import 'package:messenger_service/image_profile.dart';
import 'package:messenger_service/qualification.dart';

import 'button_call.dart';
import 'main.dart';

class Perfilmensajero extends StatelessWidget {
  final idperfil;
  final List<Post> perfil;
  Perfilmensajero({Key key, this.perfil, this.idperfil});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perfil Mensajero - Will Mora'),
        ),
        body: ListView(children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
            height: 460,
            width: double.maxFinite,
            child: Card(
              elevation: 5,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ImageProfile(perfil[idperfil].foto),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              Text(
                                perfil[idperfil].nombre,
                                style: TextStyle(fontSize: 20),
                              ),
                              Text(perfil[idperfil].moto),
                              SizedBox(height: 20),
                              Text('Calificaciones'),
                              SizedBox(
                                height: 20,
                              ),
                              Qualification(),
                              SizedBox(height: 20),
                              Text('Descripcion:'),
                              Text('Mensajero las 24 Horas'),
                              SizedBox(height: 40),
                              Text('Verificar Placa:'),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ButtonCall(perfil[idperfil].telefono),
                                  LicensePlate(perfil[idperfil].placa),
                                  ButtonWhatsapp(perfil[idperfil].whatsapp),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Regresar'))
        ]),
      ),
    );
  }
}
