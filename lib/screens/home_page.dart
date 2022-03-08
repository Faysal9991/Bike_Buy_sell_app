import 'package:bikesellapp/controller/brand_controller.dart';
import 'package:bikesellapp/controller/login_controler.dart';
import 'package:bikesellapp/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  final brandcontroller = Get.put(BrandController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(controller.googleAccount.value?.displayName??'',style: TextStyle(fontSize: 69),),
         Row(
           children: [
             Expanded(child: GetX<BrandController>(
               builder: (controller){
                 return ListView.builder(
                   itemCount: controller.Bike_Logo_png.length,
                     itemBuilder:(context, index){
                     return Column(
                       children: [
                         Container(

                             child: Text(controller.Bike_Logo_png[index].name))
                       ],
                     );
                     }) ;
               },
             ))
           ],
         )
        ],
      ),
    );
  }
}
