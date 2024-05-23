import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cartelera de Películas'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(
                'Spiderman 2',
                'Fecha: 1 de julio de 2024',
                'Acción',
                '2h 7min',
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxmwbObtsJvJIOo6A5E_k3h7yn17YNNdGcupSY2Z8F_g&s',
              ),
              SizedBox(height: 20),
              buildCard(
                'Kung Fu Panda 2',
                'Fecha: 7 de junio de 2024',
                'Animación',
                '1h 32min',
                'https://m.media-amazon.com/images/S/pv-target-images/70678c0ad443191116f8128c83c37081d7e0f9840a0d5eafd8fad69fd8d5b801.jpg',
              ),
              SizedBox(height: 20),
              buildCard(
                'Batman The Dark Knight',
                'Fecha: 17 de julio de 2024',
                'Acción',
                '2h 32min',
                'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg',
              ),
              SizedBox(height: 20),
              buildCard(
                'Megamente',
                'Fecha: 2 de diciembre de 2024',
                'Animación',
                '1h 35min',
                'https://static.wixstatic.com/media/723a57_9b0f800442634d70b2bb00467972429d~mv2.jpg/v1/fill/w_640,h_360,al_c,q_80,enc_auto/723a57_9b0f800442634d70b2bb00467972429d~mv2.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String date, String genre, String duration, String imageUrl) {
    return Center(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 500,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              AspectRatio(
                aspectRatio: 25 / 15, 
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Fecha: $date',
              ),
              Text(
                'Género/Categoría: $genre',
              ),
              Text(
                'Duración: $duration',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
