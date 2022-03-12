class RunnerDetailsModel{
  static const Name = "name";


  late String name;



  RunnerDetailsModel({required this.name,});
  RunnerDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}