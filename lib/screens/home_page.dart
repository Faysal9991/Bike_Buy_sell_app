import 'package:bikesellapp/controller/brand_controller.dart';
import 'package:bikesellapp/controller/login_controler.dart';
import 'package:bikesellapp/models/brand_model.dart';
import 'package:flutter/cupertino.dart';
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
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Text("Hi My Name is Faysal",style: TextStyle(fontSize:50),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.amberAccent
                ),
                child: Text(controller.googleAccount.value?.displayName??'',style: TextStyle(fontSize:10),)),
          ),
         Expanded(child: GetX<BrandController>(
           builder: (controller){
             return ListView.builder(
               itemCount: controller.brandDetails.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder:(context, index){
                 return Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: height/5,
                         width: width/3,
                         decoration: BoxDecoration(color: Colors.white),
                         child: Column(
                           children: [
                             Image.asset(controller.brandDetails[index].png,height: height*0.4,width: width*0.3,),
                             Text(controller.brandDetails[index].name),
                           ],
                         ),
                       ),
                     ),
                   ],
                 );
                 }) ;
           },
         ))
        ],
      ),
    );
  }
}
