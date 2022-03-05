import 'package:bikesellapp/controller/login_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(controller.googleAccount.value?.displayName??'',style: TextStyle(fontSize: 69),)
        ],
      ),
    );
  }
}
