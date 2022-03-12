class NewCollctionmodel{
  static const Name = "name";
  static const Codi_tion = "condition";
  static const Run = "run";
  static const Png = "png";
  static const Rating = "rating";
  static const Price = "price";

  late String name;
  late String condition;
  late String run;
  late String png;
  late String rating;
  late String price;
  NewCollctionmodel({

    required this.name,
    required this.condition,
    required this.run,
    required this.png,
    required this.rating,
    required this.price,


  });

  NewCollctionmodel.fromMap(Map<String, dynamic> data){

    name = data[Name];
    condition = data[Codi_tion];
    run = data[Run];
    png = data[Png];
    rating = data[Rating];
    price = data[Price];



  }
}