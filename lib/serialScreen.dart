import 'package:flutter/material.dart';
import 'package:movies_app/filmScreen.dart';
import 'package:movies_app/navbar.dart';

import 'package:movies_app/detailFilm.dart';
import 'package:movies_app/detailSerial.dart';
import 'package:movies_app/model/listFilmdanSerial.dart';

class SerialScreen extends StatelessWidget {

  @override 
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'ReSeFi'),
      ),
           body: ListView(
        children: IsiSerial.map((serial) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailSerial(serial: serial);
              }));
            },
            child:Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 280,
              width: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 160,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                serial.posterS
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          serial.namaS,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'LemonMilk',
                            fontSize: 18),
                            textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
