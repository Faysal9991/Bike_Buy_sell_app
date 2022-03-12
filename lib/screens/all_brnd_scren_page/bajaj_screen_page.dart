import 'package:bikesellapp/controller/all_brnd_dtils_contol/bajaj_contoller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BajaDtailsPage extends StatelessWidget {
  BajaDtailsPage({Key? key}) : super(key: key);
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
            builder: (controller){
              return ListView.builder(
                  itemCount: controller.bajajDetails.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder:(context, index){
                    return Column(
                      children: [
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
                                // Image.network(controller.brandDetails[index].png.toString(),height: height*0.15,width: width/1.5,),
                                Text(controller.bajajDetails[index].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }) ;
            },
          )),
        ],
      ),
    );
  }
}
