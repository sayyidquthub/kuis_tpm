import 'package:flutter/material.dart';
import 'package:kuis_tpm_plug_e/detail_page.dart';
import 'top_album.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Spoti-pay'),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
        color: Colors.lightBlue,
      ),
    );
  }

  Widget _createListCard() {
    var album = topAlbumList();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: album.length,
      itemBuilder: (BuildContext context, int index) {
        return _createCard(album[index], context);
      },
    );
  }

  Widget _createCard(TopAlbum data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              albumName : data.albumName,
              singer : data.singer,
              releaseDate : data.releaseDate,
              firstEntryDate : data.firstEntryDate,
              firstEntryPosition : data.firstEntryPosition,
              source : data.source,
              imageUrls : data.imageUrls,
              albumUrl : data.albumUrl,
              songs : data.songs,

            );
          }));
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child : Container(
                  child: Image.network(
                    data.imageUrls,
                    fit: BoxFit.fitWidth,
                    height: 400,
                    width: 250,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      data.albumName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}