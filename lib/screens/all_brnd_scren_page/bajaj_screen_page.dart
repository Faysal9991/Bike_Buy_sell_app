import 'package:bikesellapp/controller/all_brnd_dtils_contol/bajaj_contoller.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/gallary_photo_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class BajaDtailsPage extends StatelessWidget {
  BajaDtailsPage({Key? key}) : super(key: key);
  final double _borderRadius = 24;
  final bajajBikeDetailsController = Get.put(BajaController());
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Hi"),
      ),
      body: Column(
        children: [
          Expanded(child: GetX<BajaController>(
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.bajajDetails.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(onTap: () {
                    Get.to(PhotoViewgallry(
                      photo1: controller.bajajDetails[index].fullphoto,
                      photo2: controller.bajajDetails[index].sidephoto,
                      photo3: controller.bajajDetails[index].thirdphoto,
                      photo4: controller.bajajDetails[index].forthphoto,
                      photo5: controller.bajajDetails[index].fifthphoto,
                      photo6: controller.bajajDetails[index].sixthphoto,
                      photo7: controller.bajajDetails[index].saventhphoto,
                    ));
                  },
                    child: Card(
                      shadowColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),),
                      child:  Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.blue
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: height*0.05,
                                  backgroundColor: Color(0xffF2F4F3),
                                  child: Image.network(controller.bajajDetails[index].png.toString(),height: height*0.08,),
                                ),

                                Text(controller.bajajDetails[index].name,style: GoogleFonts.lato(fontSize: height*0.02,fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Column(
                              children: [
                                Text(controller.bajajDetails[index].health),
                                Text(controller.bajajDetails[index].price),
                                Text(controller.bajajDetails[index].bikecolor),
                                Text(controller.bajajDetails[index].cc),
                                Text(controller.bajajDetails[index].papers),

                                Text(controller.bajajDetails[index].bncng),

                              ],
                            ),
                            Column(
                              children: [Text(controller.bajajDetails[index].engcondition),
                                Text(controller.bajajDetails[index].rating),
                                Text(controller.bajajDetails[index].model),
                              ],
                            )

                          ],
                        ),
                      ),
                    ),
                  );
                }) ;
            },
          )),
        ],
      ),
    );
  }
}