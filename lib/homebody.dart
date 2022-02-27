import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Column(

      children: [
        Padding(
          padding:  EdgeInsets.only(top: height*0.007,right: width*0.02,left: width*0.025),
          child: Row(

            children: [
              Text("Most populer",style:TextStyle(fontSize: height*0.03,fontWeight: FontWeight.bold,)),
              Spacer(),
              Padding(
                padding:  EdgeInsets.only(top: height*0.02),
                child: Text("See all",style:TextStyle(color: Color(0xffA5A2B0))),
              ),

            ],
          ),
        )
      ],
    );
  }
}
