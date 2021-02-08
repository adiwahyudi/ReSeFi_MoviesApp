import 'package:movies_app/model/listFilmdanSerial.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailFilm extends StatelessWidget {

  final ListFilm pilm;

  DetailFilm({@required this.pilm});

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(pilm.gambarAwalF,
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
                pilm.namaF,
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
                        pilm.ratingF,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today_outlined),
                      SizedBox(height: 8.0),
                      Text(
                        pilm.tahunF,
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
              child: Column(
                  children: <Widget>[
                  Text(
                    pilm.genreF,
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 15),
                  Text(
                    pilm.deskripsiF,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
                          text: pilm.sutradaraF,
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
                          text: pilm.pemainF,
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
              width: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: pilm.gambarIsiF.map((url){
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