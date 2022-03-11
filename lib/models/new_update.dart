class NewCollctionmodel{
  static const Name = "name";
  static const Codi_tion = "condition";
  static const Run = "run";
  static const Png = "png";

  late String name;
  late String condition;
  late String run;
  late String png;
  NewCollctionmodel({

    required this.name,
    required this.condition,
    required this.run,
    required this.png,


  });

  NewCollctionmodel.fromMap(Map<String, dynamic> data){

    name = data[Name];
    condition = data[Codi_tion];
    run = data[Run];
    png = data[Png];



  }
}