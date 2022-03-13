class HeroDetailsModel{
  static const Name = "name";
  static const Health = "health";
  static const Price = "price";
  static const Png = "png";
  static const Bikecolor = "bikecolor";
  static const Cc = "cc";
  static const Papers = "papers";
  static const Rationg = "rating";
  static const Engcondition = "engcondition";
  static const Bncng = "bncng";
  static const Model = "model";
  static const Fullphoto = "fullphoto";
  static const Sidephoto = "sidephoto";
  static const Thirdphoto = "thirdphoto";
  static const Forthphoto = "forthphoto";
  static const Fifthphoto = "fifthphoto";
  static const Sixthphoto = "sixthphoto";
  static const SaventhPhoto = "saventhphoto";





  late String name;
  late String health;
  late String price;
  late String png;
  late String bikecolor;
  late String cc;
  late String papers;
  late String rating;
  late String engcondition;
  late String bncng;
  late String model;
  late String fullphoto;
  late String sidephoto;
  late String thirdphoto;
  late String forthphoto;
  late String fifthphoto;
  late String sixthphoto;
  late String saventhphoto;



  HeroDetailsModel({
    required this.name,
    required this.health,
    required this.price,
    required this.png,
    required this.bikecolor,
    required this.papers,
    required this.rating,
    required this.engcondition,
    required this.bncng,
    required this.model,
    required this.fullphoto,
    required this.sidephoto,
    required this.thirdphoto,
    required this.forthphoto,
    required this.fifthphoto,
    required this.sixthphoto,
    required this.saventhphoto,


  });
  HeroDetailsModel.fromMap(Map<String, dynamic> data){
    name= data[Name];
    health= data[Health];
    price= data[Price];
    png= data[Png];
    bikecolor= data[Bikecolor];
    cc = data[Cc];
    papers = data[Papers];
    rating = data[Rationg];
    engcondition = data[Engcondition];
    bncng = data[Bncng];
    model = data[Model];
    fullphoto = data[Fullphoto];
    sidephoto = data[Sidephoto];
    thirdphoto = data[Thirdphoto];
    forthphoto = data[Forthphoto];
    fifthphoto = data[Fifthphoto];
    sixthphoto = data[Sixthphoto];
    saventhphoto = data[SaventhPhoto];



  }
}
