import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:bikesellapp/models/brnd_details_modl/walton_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class WaltonController extends GetxController{
  static WaltonController instance = Get.find();
  RxList<WaltonDetailsModel> waltonDetails = RxList<WaltonDetailsModel>([]);
  String Collection ="waltonDetails";

  @override
  void
  onReady(){
    super.onReady();
    waltonDetails.bindStream(getAllwaltonDetails());
  }

  Stream<List<WaltonDetailsModel>> getAllwaltonDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => WaltonDetailsModel.fromMap(item.data())).toList());

}