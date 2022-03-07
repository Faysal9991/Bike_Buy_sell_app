import 'package:bikesellapp/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class BrandController extends GetxController{
static BrandController instance = Get.find();
RxList<BrandModel> Bike_Logo_png = RxList<BrandModel>([]);
String Collection ="Bike_Logo_png";

 @override
 void
 onReady() {
   super.onReady();
   Bike_Logo_png.bindStream(getAllBike_Logo_pn());
  }

Stream<List<BrandModel>> getAllBike_Logo_pn() =>
    FirebaseFirestore.instance
        .collection(Collection)
        .snapshots().map((query) =>
        query.docs.map((item) => BrandModel.fromMap(item.data())).toList());

}