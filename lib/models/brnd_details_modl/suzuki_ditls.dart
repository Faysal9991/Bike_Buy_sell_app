class SuzukiDetailsModel{
  static const Name = "name";


  late String name;



  SuzukiDetailsModel({required this.name,});
  SuzukiDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}