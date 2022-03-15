import 'package:bikesellapp/models/new_update.dart';
import 'package:bikesellapp/models/offer_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class OfferController extends GetxController{
  static OfferController instance = Get.find();
  RxList<DailyOfferModel> todaysOffer = RxList<DailyOfferModel>([]);
  String Collection ="todaysOffer";

  @override
  void
  onReady(){
    super.onReady();
    todaysOffer.bindStream(getAlltodaysOffer());
  }

  Stream<List<DailyOfferModel>> getAlltodaysOffer() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => DailyOfferModel.fromMap(item.data())).toList());

}