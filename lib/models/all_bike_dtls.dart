class AllBikeDetailsModel{
  static const Name = "name";


  late String name;



  AllBikeDetailsModel({required this.name,});
  AllBikeDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];


  }
}
