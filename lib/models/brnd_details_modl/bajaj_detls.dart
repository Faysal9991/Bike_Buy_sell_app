class BajajDetailsModel{
  static const Name = "name";
  static const Health = "health";
  static const Price = "price";
  static const Png = "png";




  late String name;
  late String health;
  late String price;
  late String png;



  BajajDetailsModel({
    required this.name,
    required this.health,
    required this.price,
    required this.png,


  });
  BajajDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];
    health= data[Health];
    price= data[Price];
    png= data[Png];

  }
}
