class WaltonDetailsModel{
  static const Name = "name";


  late String name;



  WaltonDetailsModel({required this.name,});
  WaltonDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}