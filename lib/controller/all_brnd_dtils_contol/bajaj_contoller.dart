import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class BajaController extends GetxController{
  static BajaController instance = Get.find();
  RxList<BajajDetailsModel> bajajDetails = RxList<BajajDetailsModel>([]);
  String Collection ="bajajDetails";

  @override
  void
  onReady(){
    super.onReady();
    bajajDetails.bindStream(getAllbajajDetails());
  }

  Stream<List<BajajDetailsModel>> getAllbajajDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => BajajDetailsModel.fromMap(item.data())).toList());

}