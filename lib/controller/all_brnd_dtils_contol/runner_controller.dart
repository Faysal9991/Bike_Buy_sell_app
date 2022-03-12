import 'package:bikesellapp/models/brnd_details_modl/bajaj_detls.dart';
import 'package:bikesellapp/models/brnd_details_modl/ranner_dtls.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
class RunnerController extends GetxController{
  static RunnerController instance = Get.find();
  RxList<RunnerDetailsModel> runnerDetails = RxList<RunnerDetailsModel>([]);
  String Collection ="runnerDetails";

  @override
  void
  onReady(){
    super.onReady();
    runnerDetails.bindStream(getAllrunnerDetails());
  }

  Stream<List<RunnerDetailsModel>> getAllrunnerDetails() =>
      FirebaseFirestore.instance
          .collection(Collection)
          .snapshots().map((query) =>
          query.docs.map((item) => RunnerDetailsModel.fromMap(item.data())).toList());

}