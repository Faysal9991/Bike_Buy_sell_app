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
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.green,

        title: Text("Home"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
                child: Text("Brand",
                  style: GoogleFonts.lato(
                      fontSize: height*0.03,
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
          Expanded(child: GetX<BrandController>(
           builder: (controller){
             return ListView.builder(
               itemCount: controller.brandDetails.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder:(context, index){
                 return Column(
                   children: [
                     Padding(
                       padding:EdgeInsets.only(left: width*0.02),
                       child: Center(
                         child: Container(
                           height: height/5,
                           width: width/3,
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
                               Image.network(controller.brandDetails[index].png.toString(),height: height*0.15,width: width/1.5,),
                               Text(controller.brandDetails[index].name,style: GoogleFonts.lato(fontSize: height*0.03,fontWeight: FontWeight.bold),),
                             ],
                           ),
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
