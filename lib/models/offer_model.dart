class DailyOfferModel{
  static const Name = "name";
  static const PNG = "png";

  late String name;
  late String png;


  DailyOfferModel({required this.name,required this.png});
  DailyOfferModel.fromMap(Map<String, dynamic> data){
    name= data[Name];
    png = data[PNG];

  }
}
