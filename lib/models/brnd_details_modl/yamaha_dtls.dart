class YamahaDetailsModel{
  static const Name = "name";


  late String name;



  YamahaDetailsModel({required this.name,});
  YamahaDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}