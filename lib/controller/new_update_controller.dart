import 'package:bikesellapp/models/new_update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class UpdateController extends GetxController{
  static UpdateController instance = Get.find();
  RxList<NewCollctionmodel> updateBike = RxList<NewCollctionmodel>([]);
  String Collection ="updateBike";

  @override
  void
  onReady(){
    super.onReady();
    updateBike.bindStream(getAllupdateBike());
  }

  Stream<List<NewCollctionmodel>> getAllupdateBike() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => NewCollctionmodel.fromMap(item.data())).toList());

}