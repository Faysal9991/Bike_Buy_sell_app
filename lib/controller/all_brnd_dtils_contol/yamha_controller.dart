import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:bikesellapp/models/brnd_details_modl/yamaha_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class YamhaController extends GetxController{
  static YamhaController instance = Get.find();
  RxList<YamahaDetailsModel> yamhaDetails = RxList<YamahaDetailsModel>([]);
  String Collection ="yamhaDetails";

  @override
  void
  onReady(){
    super.onReady();
    yamhaDetails.bindStream(getAllyamhaDetails());
  }

  Stream<List<YamahaDetailsModel>> getAllyamhaDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => YamahaDetailsModel.fromMap(item.data())).toList());

}