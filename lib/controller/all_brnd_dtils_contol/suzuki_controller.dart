import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:bikesellapp/models/brnd_details_modl/suzuki_ditls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class SuzukiController extends GetxController{
  static SuzukiController instance = Get.find();
  RxList<SuzukiDetailsModel> suzukiDetails = RxList<SuzukiDetailsModel>([]);
  String Collection ="suzukiDetails";

  @override
  void
  onReady(){
    super.onReady();
    suzukiDetails.bindStream(getAllsuzukiDetails());
  }

  Stream<List<SuzukiDetailsModel>> getAllsuzukiDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => SuzukiDetailsModel.fromMap(item.data())).toList());

}