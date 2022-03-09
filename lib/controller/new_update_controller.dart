import 'package:bikesellapp/models/new_update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class UpdateController extends GetxController{
  static UpdateController instance = Get.find();
  RxList<NewCollction> updateBike = RxList<NewCollction>([]);
  String Collection ="updateBike";

  @override
  void
  onReady(){
    super.onReady();
    updateBike.bindStream(getAllupdateDetails());
  }

  Stream<List<NewCollction>> getAllupdateDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => NewCollction.fromMap(item.data())).toList());

}