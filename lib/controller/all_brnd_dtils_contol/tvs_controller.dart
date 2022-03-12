import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:bikesellapp/models/brnd_details_modl/tvs_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class TvsController extends GetxController{
  static TvsController instance = Get.find();
  RxList<TvsDetailsModel> tvsDetails = RxList<TvsDetailsModel>([]);
  String Collection ="tvsDetails";

  @override
  void
  onReady(){
    super.onReady();
    tvsDetails.bindStream(getAlltvsDetails());
  }

  Stream<List<TvsDetailsModel>> getAlltvsDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => TvsDetailsModel.fromMap(item.data())).toList());

}