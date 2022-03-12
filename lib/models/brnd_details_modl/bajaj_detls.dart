class BajajDetailsModel{
  static const Name = "name";


  late String name;



  BajajDetailsModel({required this.name,});
  BajajDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}
