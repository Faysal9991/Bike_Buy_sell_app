
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
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.green,
        title: Text("View all Photo"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             Card(shadowColor: Colors.black,
                 child: Image.network(photo1)),
               Card(shadowColor: Colors.black,
                   child: Image.network(photo2)),
              Card(shadowColor: Colors.black,
                  child: Image.network(photo3)),
              Card(shadowColor: Colors.black,
                  child: Image.network(photo4)),
              Card(shadowColor: Colors.black,
                  child: Image.network(photo5)),
               Card(shadowColor: Colors.black,
                   child: Image.network(photo6)),
      Card(shadowColor: Colors.black,
          child: Image.network(photo7)),

            ],
          ),
        ),
       ),
    );

  }
}
