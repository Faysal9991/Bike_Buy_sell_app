class DailyOfferModel{
  static const Name = "name";
  static const PNG = "png";
  static const Offer = "offer";
  static const Photo = "photo";

  late String name;
  late String png;
  late String offer;
  late String photo;


  DailyOfferModel({
    required this.name,
    required this.png,
    required this.offer,
    required this.photo,
  });
  DailyOfferModel.fromMap(Map<String, dynamic> data){
    name= data[Name];
    png = data[PNG];
    offer = data[Offer];
    photo = data[Photo];

  }
}
