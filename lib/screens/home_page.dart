import 'package:bikesellapp/controller/brand_controller.dart';
import 'package:bikesellapp/controller/login_controler.dart';
import 'package:bikesellapp/controller/new_update_controller.dart';
import 'package:bikesellapp/controller/offer_controller.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/bajaj_screen_page.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/hero_screen_page.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/ranner_screen_page.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/suzuki_screen_page.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/tvs_screen_page.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/yamha_screen_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clay_containers/clay_containers.dart';
import 'dart:ui' as ui;
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  final brandcontroller = Get.put(BrandController());
  final updatecontroller = Get.put(UpdateController());
  final offercontroller = Get.put(OfferController());
  final double _borderRadius = 24;

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    Color baseColor = Color(0xFFF2F2F2);
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Text("Home"),
      ),
      body:  Column(
        children: [GetX<BrandController>(
      builder: (controller){
        return   Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        color: baseColor,
        child: ClayContainer(
        borderRadius: 15,
        color: baseColor,
        height:height*0.19,
        width: width*1.7,
        child: Column(
        children: [
        Center(child: ClayText("Todays Offer!",style:GoogleFonts.lato(fontSize: height*0.03),color: Color(0xffbdc3c7),)),
        Text(offercontroller.todaysOffer[0].name)
        ],
        ),
    ),
    ),
    );
    },
        ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Brand",
                  style: GoogleFonts.lato(
                      fontSize: height*0.023,
                      shadows:[Shadow
                        (color: Colors.black,
                          offset: Offset(1 ,1)
                      ),
                        Shadow
                          (color: Colors.black45,
                            offset: Offset(2 ,2)
                        )
                      ]
                  ),
                )
            ),
          ),
          GetX<BrandController>(
            builder: (controller){
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                        children: [//TVS
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: InkWell(onTap: (){

                              Get.to(TvsDtailsPage());
                            },
                              child: Container(
                                height: height*0.2,
                                width: width*0.31,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [BoxShadow(
                                        color: Colors.black45,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4,4)
                                    ),
                                      BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          offset: Offset(-4,-4)
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Image.network(controller.brandDetails[4].png.toString(),height: height*0.15,width: width/1.5,),
                                    Text(controller.brandDetails[4].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //Suzuki
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: Container(
                              height: height*0.2,
                              width: width*0.31,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [BoxShadow(
                                      color: Colors.black45,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4,4)
                                  ),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(-4,-4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Image.network(controller.brandDetails[3].png.toString(),height: height*0.15,width: width/1.5,),
                                  Text(controller.brandDetails[3].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                          //yamha
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: Container(
                              height: height*0.2,
                              width: width*0.31,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [BoxShadow(
                                      color: Colors.black45,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4,4)
                                  ),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(-4,-4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Image.network(controller.brandDetails[6].png.toString(),height: height*0.15,width: width/1.5,),
                                  Text(controller.brandDetails[6].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                          //Bajaj
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: InkWell(onTap: (){

                              Get.to(BajaDtailsPage());
                            },
                              child: Container(
                                height: height*0.2,
                                width: width*0.31,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [BoxShadow(
                                        color: Colors.black45,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(4,4)
                                    ),
                                      BoxShadow(
                                          color: Colors.white,
                                          spreadRadius: 1,
                                          blurRadius: 8,
                                          offset: Offset(-4,-4)
                                      )
                                    ]
                                ),
                                child: Column(
                                  children: [
                                    Image.network(controller.brandDetails[0].png.toString(),height: height*0.15,width: width/1.5,),
                                    Text(controller.brandDetails[0].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //Hero
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: Container(
                              height: height*0.2,
                              width: width*0.31,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [BoxShadow(
                                      color: Colors.black45,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4,4)
                                  ),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(-4,-4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Image.network(controller.brandDetails[1].png.toString(),height: height*0.15,width: width/1.5,),
                                  Text(controller.brandDetails[1].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                          //runner
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: Container(
                              height: height*0.2,
                              width: width*0.31,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [BoxShadow(
                                      color: Colors.black45,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4,4)
                                  ),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(-4,-4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Image.network(controller.brandDetails[2].png.toString(),height: height*0.15,width: width/1.5,),
                                  Text(controller.brandDetails[2].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                          //walton
                          Padding(
                            padding:EdgeInsets.only(left: width*0.02),
                            child: Container(
                              height: height*0.2,
                              width: width*0.31,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [BoxShadow(
                                      color: Colors.black45,
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset: Offset(4,4)
                                  ),
                                    BoxShadow(
                                        color: Colors.white,
                                        spreadRadius: 1,
                                        blurRadius: 8,
                                        offset: Offset(-4,-4)
                                    )
                                  ]
                              ),
                              child: Column(
                                children: [
                                  Image.network(controller.brandDetails[5].png.toString(),height: height*0.15,width: width/1.5,),
                                  Text(controller.brandDetails[5].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
            }),

          Text("New Collction", style: GoogleFonts.lato(
              fontSize: height*0.02,fontWeight: FontWeight.bold
          ),),
          SizedBox(height: height*0.006,),
          Expanded(child: GetX<UpdateController>(
            builder: (controller){
              return ListView.builder(
                  itemCount: controller.updateBike.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context, index){
                    return Card(
                      shadowColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),),
                      child:  Stack(
                        children: <Widget>[
                          Container(
                            height: height*0.17,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  _borderRadius),
                              gradient: LinearGradient(colors: [
                                Color(0xff6DC8F3),
                                Color(0xff73A1F9)
                              ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff73A1F9),
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                                size: Size(100, 150),
                                painter: CustomCardShapePainter(_borderRadius,
                                  Color(0xff6DC8F3),
                                  Color(0xff73A1F9),)
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: CircleAvatar(
                                    radius: height,
                                    backgroundColor: Color(0xffeaeded),
                                    child: Image.network(
                                      controller.updateBike[index].png,
                                    ),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children:[
                                      Text(
                                        controller.updateBike[index].name,
                                        style: GoogleFonts.lato(
                                            color: Colors.white,

                                            fontWeight: FontWeight.w700),
                                      ),
                                      Row(
                                        children: [
                                          Text("Run",style: GoogleFonts.lato(color: Colors.white),),
                                          Text(
                                            controller.updateBike[index].run,
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Cc",style: GoogleFonts.lato(color: Colors.white)),
                                          Text(
                                            controller.updateBike[index].condition,
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Price: ",style: GoogleFonts.lato(color: Colors.white)),
                                          Text(
                                            controller.updateBike[index].price,
                                            style: GoogleFonts.lato(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        "",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),

                                      Padding(
                                        padding:  EdgeInsets.only(left: width*0.067),
                                        child: Row(
                                          children: [
                                            Text(controller.updateBike[index].rating),
                                            Icon(Icons.star_border_purple500_rounded,color: Colors.yellow,size: height*0.03, ),

                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text("contact with us",style: GoogleFonts.lato(color: Colors.white,fontSize: height*0.01)),
                                          Text("01921133520",style: GoogleFonts.lato(color: Colors.black,fontSize: height*0.015)),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ) ;
            },
          )
          ),

        ],
      ),
    );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;


  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}