import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SellRule extends StatelessWidget {
  const SellRule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sell Rule",style: GoogleFonts.lato(),),
        backgroundColor: Colors.green),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(shadowColor: Colors.black,
              child: Text("বাংলাদেশের সর্ব বৃহৎ  নতুন ও পুরাতন বাইক ক্রয় ও বিক্রয় প্রতিষ্ঠান।  সাধ্যের মধ্য সপ্নপূরন এখানেই।",style: GoogleFonts.lato(),),
            ),

          ),
          Card(shadowColor: Colors.black,
            child: Text("আপনার  বাইকের  ৭ টি ছবি  সামনে পিছনে, দুপাশের, দুটি টায়ার এর এবং মিটারের একটি ছবি দিবেন। তারপর আলোচনা সাপেক্ষে আমরা আপনার বাইকটি ক্রয় করব।\n"
              "বাইকের সাথে অবশ্যই প্রয়োজন  কাজপত্র থাকা আবশ্যক কোন প্রকার টানা গাড়ি বা কাগজে সমস্যা আছে এমন গড়ি আমরা ক্রয় করি না।",style: GoogleFonts.lato(),),
          ),
          Card(color: Color(0xff4FEC69),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("আমাদের Whats App Contact : 01907334336",style: GoogleFonts.lato(fontSize: 15),),
            ),
          )
        ],
      ),
    );
  }
}
