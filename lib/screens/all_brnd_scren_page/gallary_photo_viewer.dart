import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PhotoViewgallry extends StatelessWidget {
  String photo1;
  String photo2;
  String photo3;
  String photo4;
  String photo5;
  String photo6;
  String photo7;


   PhotoViewgallry({
     Key? key,
     required this.photo1,
     required this.photo2,
     required this.photo3,
     required this.photo4,
     required this.photo5,
     required this.photo6,
     required this.photo7,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hi2"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.network(photo1),
            Image.network(photo2),
            Image.network(photo3),
            Image.network(photo4),
            Image.network(photo5),
            Image.network(photo6),
            Image.network(photo7),
          
          ],
        ),
      ),
    );
  }
}
