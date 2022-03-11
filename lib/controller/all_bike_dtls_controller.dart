import 'package:bikesellapp/models/all_bike_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class AllBikeDetailsController extends GetxController{
  static AllBikeDetailsController instance = Get.find();
  RxList<AllBikeDetailsModel> allbikedetails = RxList<AllBikeDetailsModel>([]);
  String Collection ="allbikedetails";

  @override
  void
  onReady(){
    super.onReady();
    allbikedetails.bindStream(getAllallbikedetails());
  }

  Stream<List<AllBikeDetailsModel>> getAllallbikedetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => AllBikeDetailsModel.fromMap(item.data())).toList());

}