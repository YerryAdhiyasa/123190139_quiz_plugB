import 'home_page.dart';

import 'top_album.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Dummy"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
        final TopAlbum place = topAlbumList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage(username: place.albumName);
            }));
          },
          child: Card(
            child: Row(
              children: [
                Image.network(place.imageUrls[0],width: 64,),
                Text(place.albumName),
                Text(place.singer),
              ],
            ),
          ),
        );
      },
      itemCount: topAlbumList.length,),
    );
  }
}
