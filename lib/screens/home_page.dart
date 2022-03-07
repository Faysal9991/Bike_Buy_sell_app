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
  final brcontroller = Get.put(BrandController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(controller.googleAccount.value?.displayName??'',style: TextStyle(fontSize: 69),),
         Row(
           children: [
             Obx(()=>GridView.count(
        crossAxisCount: 2,
        childAspectRatio: .63,
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 10,

    )
    )
           ],
         )
        ],
      ),
    );
  }
}
