import 'package:bikesellapp/controller/brand_controller.dart';
import 'package:bikesellapp/controller/login_controler.dart';
import 'package:bikesellapp/controller/new_update_controller.dart';
import 'package:bikesellapp/screens/all_brnd_scren_page/bajaj_screen_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:clay_containers/clay_containers.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  final brandcontroller = Get.put(BrandController());
  final updatecontroller = Get.put(UpdateController());
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
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
          color: baseColor,
          child: ClayContainer(
            borderRadius: 15,
            color: baseColor,
            height:height*0.2,
            width: width*1.7,
            child: Column(
              children: [
                Center(child: ClayText("Todays Offer!",style:GoogleFonts.lato(fontSize: height*0.03),color: Color(0xffbdc3c7),)),
              ],
            ),
          ),
          ),
        ),
          InkWell(
            child: Container(
            height: height*0.1,
            width: width,
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
                    Padding(
                      padding:  EdgeInsets.only(left: width*0.07),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("বাংলাদেশের সর্ব বৃহৎ\n     নতুন ও পুরাতন বাইক ক্রয় ও বিক্রয় প্রতিষ্ঠান।\n            সাধ্যের মধ্য সপ্নপূরন এখানেই।",style:GoogleFonts.lato(fontSize: height*0.02,fontWeight: FontWeight.bold))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: width*0.04),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("Khan Motors limited",style: GoogleFonts.lato(fontSize: height*0.01),)),
                    )
                  ],
                )),
          ),
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
                          child: InkWell(
                            onTap: (){
                              index=index;
                              if(index==0){
                                Get.to(BajaDtailsPage());
                              }

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
          )),
          Align(alignment: Alignment.topLeft,
            child: Text("New Collction", style: GoogleFonts.lato(
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
            ),),
          ),
          SizedBox(height: height*0.006,),
          Expanded(child: GetX<UpdateController>(
            builder: (controller){
              return ListView.builder(
                  itemCount: controller.updateBike.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder:(context, index){
                    return Card(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                  height: height*0.1,
                                  width: width*0.31,
                                  child: Image.network(controller.updateBike[index].png,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(controller.updateBike[index].name,style: GoogleFonts.lato(),),
                              )
                            ],
                          ),
                          Text("Tap For More\n                   Details",style: GoogleFonts.lato(fontSize: height*0.02),),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [

                                Row(
                                  children: [
                                    Text("Run: ",style: GoogleFonts.lato(),),
                                    Text(controller.updateBike[index].run,style: GoogleFonts.lato(fontWeight: FontWeight.bold),),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Price: ",style: GoogleFonts.lato(),),
                                    Text(controller.updateBike[index].price,style: GoogleFonts.lato(fontWeight: FontWeight.bold),),

                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Condition ",style: GoogleFonts.lato(),),
                                    Text(controller.updateBike[index].condition,style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Rating: ",style: GoogleFonts.lato(),),
                                    Text(controller.updateBike[index].rating,style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
                                    Icon(Icons.star,color: Colors.yellow,size: height*0.023,)

                                  ],
                                ),

                              ],
                            ),
                          )
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