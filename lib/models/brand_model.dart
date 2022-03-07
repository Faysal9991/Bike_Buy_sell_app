
class BrandModel{
  static const Name = "name";
  static const PNG = "png";

 late String name;
 late String png;


  BrandModel({required this.name,required this.png});
  BrandModel.fromMap(Map<String, dynamic> data){
    name = data[Name];
    png = data[PNG];

  }
}
