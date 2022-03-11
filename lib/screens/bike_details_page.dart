import 'package:bikesellapp/controller/all_bike_dtls_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllDetailsPage extends StatelessWidget {
   AllDetailsPage({Key? key}) : super(key: key);
  final allBikeDetailsController = Get.put(AllBikeDetailsController());
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
          Expanded(child: GetX<AllBikeDetailsController>(
            builder: (controller){
              return ListView.builder(
                  itemCount: controller.allbikedetails.length,
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
                                Text(controller.allbikedetails[index].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
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
