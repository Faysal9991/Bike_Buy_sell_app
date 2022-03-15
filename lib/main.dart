import 'package:bikesellapp/controller/brand_controller.dart';
import 'package:bikesellapp/controller/new_update_controller.dart';
import 'package:bikesellapp/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/login_controler.dart';
import 'screens/login_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final controller = Get.put(LoginController());
   final brandcontroller = Get.put(BrandController());
   final updatecontroller = Get.put(UpdateController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx((){
       if (controller.googleAccount.value!=null.obs)
       return HomePage();
       else
         return loginPage();
      }

      ),

    );
  }
}
