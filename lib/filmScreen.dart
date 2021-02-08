import 'package:flutter/material.dart';
import 'package:movies_app/navbar.dart';

import 'package:movies_app/detailFilm.dart';
import 'package:movies_app/detailSerial.dart';
import 'package:movies_app/model/listFilmdanSerial.dart';

class FilmScreen extends StatelessWidget {

  @override 
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text(
          'ReSeFi'),
      ),
           body: ListView(
        children: IsiFilm.map((pilm) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailFilm(pilm: pilm);
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
                          height: 170,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                pilm.posterF
                              )
                            )
                          ),
                        ),
                        SizedBox(height: 18),
                        Text(
                          pilm.namaF,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'LemonMilk',
                            fontSize: 18),
                            textAlign: TextAlign.center,
                        ),
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
var IsiFilm = [
  ListFilm(
    namaF: 'Tenet',
    ratingF: '9/10',
    tahunF: '2020',
    genreF: 'Action, Sci-Fi, Thriller',
    deskripsiF: 'Dipersenjatai hanya dengan sepatah kata—Tenet—dan berjuang untuk kelangsungan dunia, sang protagonis mengarungi senjakala dunia spionase internasional dalam sebuah misi yang membawa pada sesuatu yang melebihi alir waktu.',
    sutradaraF: 'Christopher Nolan',
    pemainF:'John David Washington,R obert Pattinson, Elizabeth Debicki',
    posterF: 'https://images-na.ssl-images-amazon.com/images/I/71Tw-XHzu1L._AC_SL1200_.jpg',
    gambarAwalF: 'images/tenet-nolan.jpg',
    gambarIsiF: [
      'https://www.indiewire.com/wp-content/uploads/2018/08/john-david.jpg?w=780',
      'https://akns-images.eonline.com/eol_images/Entire_Site/202016/rs_600x600-200206174101-600.robert-pattinson.ct.020620.jpg?fit=around%7C1200:1200&output-quality=90&crop=1200:1200;center,top',
      'https://media.vanityfair.com/photos/5f3a8586f51ed31274cdfb95/master/w_2560%2Cc_limit/GettyImages-623045046.jpg',
    ],
  ),
  ListFilm(
    namaF: 'Joker',
    ratingF: '9.5/10',
    tahunF: '2019',
    genreF: 'Action, Drama, Thriller',
    deskripsiF: 'Joker adalah film cerita seru psikologis Amerika Serikat tahun 2019 yang disutradarai oleh Todd Phillips dan diproduseri oleh Todd Philips, Bradley Cooper, dan Emma Tillinger Koskoff.',
    sutradaraF: 'Todd Phillips',
    pemainF: 'Joaquin Phoenix, Zazie Beetz.',
    posterF: 'https://i.pinimg.com/originals/55/ca/18/55ca184699865df2dc8df814bbec0c39.jpg',
    gambarAwalF: 'images/joker_baru.jpg',
    gambarIsiF: [
      'https://upload.wikimedia.org/wikipedia/commons/d/d1/Joaquin_Phoenix_in_2018.jpg',
      'https://resizing.flixster.com/t3iiAgmwNQpbDsiVNvNc8s3Zuug=/506x652/v2/https://flxt.tmsimg.com/v9/AllPhotos/981946/981946_v9_bb.jpg',
    ],
  ),
  ListFilm(
    namaF: 'Crazy Rich Asians',
    ratingF: '8.5/10',
    tahunF: '2018',
    genreF: 'Drama, Romance',
    deskripsiF: 'Seorang profesor ekonomi, Rachel Chu (Constance Wu) diajak kekasihnya yang bernama Nick Young (Henry Golding) ke Singapura. Kekasihnya menyatakan untuk datang dalam pernikahan sahabatnya sekaligus mengenalkan Rachel kepada beberapa orang. Namun, selama ini Rachel Chu tak menyadari bahwa kekasihnya adalah orang kaya raya di Asia yang diinginkan oleh banyak wanita. ',
    sutradaraF: 'Jon M. Chu',
    pemainF: 'Constance Wu , Henry Golding',
    posterF: 'https://m.media-amazon.com/images/M/MV5BMTYxNDMyOTAxN15BMl5BanBnXkFtZTgwMDg1ODYzNTM@._V1_.jpg',
    gambarAwalF: 'images/cra_awal.jpg',
    gambarIsiF: [
      'https://cosmopolitanfm.com/wp-content/uploads/2018/09/ConstanceWu.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0e/Henry_Golding_%28edit%29.jpg',
      ],
  ),
];

var IsiSerial = [
  ListSeries(
    namaS: 'Dark',
    ratingS: '8,8 / 10',
    tahunS: '2017-2020',
    genreS: 'Crime, Drama, Mystery',
    deskripsiS: 'Dark adalah serial original Netflix yang berbahasa Jerman yang bermula ketika Erik, seorang anak SMA di sebuah kota kecil bernama Winden di Jerman, hilang secara misterius. Lalu, Jonas, salah satu tokoh utama kita pergi bersama teman-temannya untuk mencari paket narkoba yang mungkin ditinggalkan Erik di sebuah goa.',
    sutradaraS: 'Baran bo Odar',
    pemainS: 'Louis Hofmann, Karoline Eichhorn, Lisa Vicari.',
    posterS: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/04/23/903342-netflix-dark.jpg',
    statusS: 'Selesai.',
    gambarAwalS: 'https://static01.nyt.com/images/2017/11/24/arts/24dark/24dark3-superJumbo.jpg',
    gambarIsiS: [
      'https://upload.wikimedia.org/wikipedia/commons/0/07/Louis_Hofmann_Hessischer_Film-_und_Kinopreis_2015.JPG',
      'https://pbs.twimg.com/media/D_3ahRZWsAAawnv.jpg',
      'https://static.wikia.nocookie.net/dark-netflix/images/9/9d/Lisa_Vicari.jpg/revision/latest?cb=20180314225921',
    ],
  ),
  ListSeries(
    namaS: 'The Mandalorian',
    ratingS: '8,8 / 10',
    tahunS: '2019-',
    genreS: 'Action, Sci-fi, Adventure',
    deskripsiS: 'The Mandalorian adalah seri televisi web opera antariksa Amerika Serikat yang dijadwalkan tayang perdana di Disney+ pada 12 November 12 2019. Seri televisi ini dibintangi Pedro Pascal, Gina Carano, Nick Nolte, Giancarlo Esposito, Emily Swallow, Carl Weathers, Omid Abtahi, dan Werner Herzog. Musim pertama seri televisi ini akan diisi oleh delapan episode',
    sutradaraS: 'Jon Favreau',
    pemainS: 'Pedro Pascal, Gina Carano, Giancarlo Esposito.',
    posterS: 'https://images-na.ssl-images-amazon.com/images/I/51B-8V3tMCL._AC_SL1030_.jpg',
    statusS: 'On-Going.',
    gambarAwalS: 'https://otakukart.com/wp-content/uploads/2020/12/The-Mandalorian-season-3.jpg',
    gambarIsiS: [
      'https://img.jakpost.net/c/2018/12/13/2018_12_13_60758_1544670431._large.jpg',
      'https://www.refinery29.com/images/8901005.jpg?format=webp&width=720&height=864&quality=85',
      'https://static.wikia.nocookie.net/scroogemcduck/images/9/9d/GiancarloEsposito.jpg/revision/latest?cb=20200819023241',
    ],
  ),
  ListSeries(
    namaS: 'La Casa De Papel',
    ratingS: '8,3 / 10',
    tahunS: '2017-',
    genreS: 'Action, Crime, Mystery',
    deskripsiS: 'Money Heist atau La Casa De Papel adalah serial drama televisi bertemakan kriminal dari Spanyol. Diproduseri oleh Álex Pina, seri ini awalnya dimaksudkan sebagai seri terbatas untuk diceritakan dalam dua bagian. ',
    sutradaraS: 'Álex Pina',
    pemainS: 'Alvaro Morte, Ursula Corbero, Pedro Alonso.',
    posterS: 'https://cdn.shopify.com/s/files/1/0969/9128/products/LaCasaDePapel-MoneyHeist3-NetflixTVShowPosterArt_68203b3b-4ea1-44f5-b8a4-97991b457b87.jpg?v=1589788850',
    statusS: 'On-Going.',
    gambarAwalS: 'https://assets-a2.kompasiana.com/items/album/2020/04/18/mv5bmmiymmm5mgyty2fhmy00mgizltkzmwytzme3ytiyzwzhztc1xkeyxkfqcgdeqxvymtkxnjuynqatat-v1-5e9a83d4097f36125e16a612.jpg?t=o&v=760',
    gambarIsiS: [
      'https://www.koimoi.com/wp-content/new-galleries/2020/04/alvaro-morte-reveals-of-taking-inspiration-from-superheroes-for-his-role-in-money-heist-001.jpg',
      'https://pbs.twimg.com/profile_images/1055549103013289986/M5iid-z5_400x400.jpg',
      'https://variety.com/wp-content/uploads/2018/11/pedro-alonso1.jpg?w=770',
    ],
  ),
];