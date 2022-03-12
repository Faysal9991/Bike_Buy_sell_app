class HeroDetailsModel{
  static const Name = "name";


  late String name;



  HeroDetailsModel({required this.name,});
  HeroDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}