import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final  double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Us",style: GoogleFonts.lato(),),
        backgroundColor: Color(0xff2980b9),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/habibulla.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("নামঃ মোঃহাবিবুল্লাহ \n"
                        "পরিচালকঃ খান মটরস, মোল্লাহাট\n"
                        "মোবাঃ01912454468",style: GoogleFonts.lato(fontWeight: FontWeight.bold),),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/alif.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("নামঃ মোঃ আলিফ সরদার\n"
                        "সহকারী পরিচালকঃ খান মটরস, মোল্লাহাট\n"
                        "মোবাঃ01629054690",style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),

            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/faysal.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("নামঃ এস এম তানভীর  হাসান ফয়সাল\n"
                        "Software Developer Flutter\n"
                        "contact : 01907334326",style: GoogleFonts.lato(fontWeight: FontWeight.bold),
                  ))
                ],
              ),
            ),
            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/rabbi.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("মোঃ রাব্বি শেখ\n"
                        "সহকারীঃ খান মটরস, মোল্লাহাট\n"
                        "মোবাঃ01859603623"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/yasin.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("নামঃ মোঃ এয়াছিন আরাফাত\n"
                        "সহকারীঃ খান মটরস, মোল্লাহাট।\n"
                        "মোবাঃ01402913829"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children:  [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/mursalin.jpeg"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(right: width*0.2),
                    child: Text("মোঃ মুরছালিন শেখ\n"
                        "সহকারীঃ খান মটরস, মোল্লাহাট\n"
                        "মোবাঃ01919646392"),
                  )
                ],
              ),
            ),


          ],
        ),
      )
    );
  }
}
