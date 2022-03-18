
import 'package:bikesellapp/controller/all_brnd_dtils_contol/hero_contoller.dart';
import 'package:bikesellapp/controller/all_brnd_dtils_contol/runner_controller.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/gallary_photo_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class RunnerDtailsPage extends StatelessWidget {
  RunnerDtailsPage({Key? key}) : super(key: key);
  final double _borderRadius = 24;
  final heroBikeDetailsController = Get.put(RunnerController());
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Runner Brands All Bike",style: GoogleFonts.lato(),),
        ),
        body: Column(
            children: [
              Expanded(child: GetX<RunnerController>(
                  builder: (controller) {
                    return ListView.builder(
                      itemCount: controller.runnerDetails.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return InkWell(onTap: () {
                          Get.to(PhotoViewgallry(
                            photo1: controller.runnerDetails[index].fullphoto,
                            photo2: controller.runnerDetails[index].sidephoto,
                            photo3: controller.runnerDetails[index].thirdphoto,
                            photo4: controller.runnerDetails[index].forthphoto,
                            photo5: controller.runnerDetails[index].fifthphoto,
                            photo6: controller.runnerDetails[index].sixthphoto,
                            photo7: controller.runnerDetails[index].saventhphoto,
                          ));
                        },
                          child: Card(
                            shadowColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),),
                            child:  Stack(
                              children: <Widget>[
                                Container(
                                  height: 150,
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
                                            controller.runnerDetails[index].png,
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
                                              controller.runnerDetails[index].name,
                                              style: GoogleFonts.lato(
                                                  color: Colors.white,

                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Row(
                                              children: [
                                                Text("Run",style: GoogleFonts.lato(color: Colors.white),),
                                                Text(
                                                  controller.runnerDetails[index].bkrun,
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
                                                  controller.runnerDetails[index].cc,
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
                                                  controller.runnerDetails[index].price,
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Engine Condition: ",style: GoogleFonts.lato(color: Colors.white)),
                                                Text(
                                                  controller.runnerDetails[index].engcondition,
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Paper",style: GoogleFonts.lato(color: Colors.white)),
                                                Text(
                                                  controller.runnerDetails[index].papers,
                                                  style: GoogleFonts.lato(
                                                    color: Colors.white,

                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text("Name Change:",style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                  fontSize: height*0.01,
                                                ),),
                                                Text(
                                                  controller.runnerDetails[index].bncng,
                                                  style: GoogleFonts.lato( fontSize: height*0.01,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),


                                            Row(
                                              children:[
                                                Icon(
                                                  Icons.insert_photo_rounded ,
                                                  color: Colors.white,
                                                  size: 16,
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    "Tap For View Bike Photo",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Avenir',
                                                    ),
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
                                            Row(
                                              children: [
                                                Text("total Health :",style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                  fontSize: height*0.01,
                                                ),),
                                                Text(controller.runnerDetails[index].health,style: GoogleFonts.lato(
                                                  color: Colors.white,
                                                  fontSize: height*0.01,
                                                ),),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.star_border_purple500_rounded,color: Colors.yellow,size: 15, ),
                                                Icon(Icons.star_border_purple500_rounded,color: Colors.yellow,size: 15, ),
                                                Icon(Icons.star_border_purple500_rounded,color: Colors.yellow,size: 15, ),
                                                Icon(Icons.star_border_purple500_rounded,color: Colors.yellow,size: 15, ),

                                              ],
                                            ),
                                            Column(
                                              children: [

                                                Text(controller.runnerDetails[index].model,style: GoogleFonts.lato(color: Colors.white,fontSize: height*0.009)),
                                                Text("contact with us",style: GoogleFonts.lato(color: Colors.white,fontSize: height*0.009)),
                                                Text("01921133520",style: GoogleFonts.lato(color: Colors.black,fontSize: height*0.009)),
                                              ],
                                            ),
                                            // RatingBar(rating: controller.bajajDetails[index].rating.toDouble()),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }
              )
              )
            ]
        )
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