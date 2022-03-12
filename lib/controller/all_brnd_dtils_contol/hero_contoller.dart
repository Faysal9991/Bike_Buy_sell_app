import 'package:bikesellapp/models/brnd_details_modl/hero_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class HrController extends GetxController{
  static HrController instance = Get.find();
  RxList<HeroDetailsModel> heroDetails = RxList<HeroDetailsModel>([]);
  String Collection ="heroDetails";

  @override
  void
  onReady(){
    super.onReady();
    heroDetails.bindStream(getAllheroDetails());
  }

  Stream<List<HeroDetailsModel>> getAllheroDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => HeroDetailsModel.fromMap(item.data())).toList());

}