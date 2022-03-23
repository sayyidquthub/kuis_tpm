import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatelessWidget {
  final String albumName;
  final String singer;
  final String releaseDate;
  final String firstEntryDate;
  final String firstEntryPosition;
  final String source;
  final String imageUrls;
  final String albumUrl;
  final List<String> songs;

  const DetailPage({
    Key ? key,
    required this.albumName,
    required this.singer,
    required this.releaseDate,
    required this.firstEntryDate,
    required this.firstEntryPosition,
    required this.source,
    required this.imageUrls,
    required this.albumUrl,
    required this.songs,

  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255,140,0,100),
        title: Text(albumName),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Image.network(imageUrls, height: 350,),
              SizedBox(height: 20,),
              Text(albumName, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text(singer, style: TextStyle(color: Colors.grey),),
              SizedBox(height: 16,),
              Text("$releaseDate | $source", style : TextStyle(color: Colors.grey),),
            ],
          ),
        ),
      ),
    );
  }

}