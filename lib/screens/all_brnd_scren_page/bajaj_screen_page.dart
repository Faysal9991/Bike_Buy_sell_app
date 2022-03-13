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
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context, index){
                    return Card(
                      child: Row(
                        children: [
                          Image.network(controller.bajajDetails[index].png.toString(),height: height*0.08,),
                          Text(controller.bajajDetails[index].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                        ],
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