import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movies_app/model/listFilmdanSerial.dart';

class DetailSerial extends StatelessWidget {

  final ListSeries serial;

  DetailSerial({@required this.serial});

  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.network(serial.gambarAwalS,
                ),
                SafeArea(
                  child: Row(
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.black,
                        textColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          size: 20,
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(10),
                        shape: CircleBorder(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                serial.namaS,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LemonMilk'
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.star_outline),
                      SizedBox(height: 8.0),
                      Text(
                        serial.ratingS,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(height: 8.0),
                      Text(
                        serial.tahunS,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: new Column(
                  children: <Widget>[
                  Text(
                    serial.genreS,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 15),
                  Text(
                    serial.deskripsiS,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontFamily: 'BonVoyage',
                    fontSize: 16, 
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Sutradara : ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: serial.sutradaraS,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Pemain : ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: serial.pemainS,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      text: 'Status : ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                          text: serial.statusS,
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ),
            Container(
              height: 175,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: serial.gambarIsiS.map((url){
                   return Container(
                    width: 190,
                    height: 190,
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          url,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 