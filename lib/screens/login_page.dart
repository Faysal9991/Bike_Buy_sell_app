import 'package:bikesellapp/controller/login_controler.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
class loginPage extends StatelessWidget {
   loginPage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {


    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;


    return Scaffold(
        // appBar: AppBar(
        //
        //   backgroundColor: Colors.black,
        //   title: Text('Google Sign In(sing'+(user== null?'out':'in')+')'),
        // ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/fst.jpg"),
              fit: BoxFit.fill,)
        ),
        child: Column(
          children: [
            Padding(
              padding:EdgeInsets.only(top: height*0.6),
              child: Text("Wellcome to Khan Motors",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: height*0.03,color: Colors.green),),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height*0.07),
              child: Text("অতিরিক্ত গতি~অতিরিক্ত ক্ষতি।\n        ধীরে চলুন, দেখে চলুন।",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: height*0.024,color:Color(0xffbdbdbd))),
            ),
            Padding(
              padding: EdgeInsets.only(left: width*0.5),
              child: Text("  উপদেশ নয় পরামর্শ।",style: GoogleFonts.lato(fontWeight: FontWeight.bold,fontSize: height*0.015,color: Colors.white,)),
            ),
            ElevatedButton.icon (onPressed: (

                ){controller.login();},
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff2D2B2C),
                    elevation: 0,
                    minimumSize: Size(width/4,height*0.05)
                ),
                icon:FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                label:  Text(" Google sign in",style: GoogleFonts.lato(color: Colors.green),)
            )





            // ElevatedButton(onPressed: ()async{await _googleSignIn.signOut();
            // setState(() {});},
            //       child: Text("sign out")),
          ],
        ),
      ),
      );
  }
}

