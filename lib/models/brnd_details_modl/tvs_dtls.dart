class TvsDetailsModel{
  static const Name = "name";


  late String name;



  TvsDetailsModel({required this.name,});
  TvsDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}