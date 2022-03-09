import 'package:bikesellapp/models/brand_model.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class BrandController extends GetxController{
static BrandController instance = Get.find();
RxList<BrandModel> brandDetails = RxList<BrandModel>([]);
String Collection ="brandDetails";

 @override
 void
 onReady(){
   super.onReady();
   brandDetails.bindStream(getAllbrndDetails());
  }

Stream<List<BrandModel>> getAllbrndDetails() =>
    FirebaseFirestore.instance
        .collection(Collection)
        .snapshots().map((query) =>
        query.docs.map((item) => BrandModel.fromMap(item.data())).toList());

}