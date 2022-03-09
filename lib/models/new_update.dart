class NewCollction{
  static const Name = "name";
  static const Png = "png";
  static const Value = "value";
  static const Condition = "condition";
  static const Health = "health";
  static const Run = "run";
  static const Model = "model";


  late String name;
  late String png;
  late String value;
  late String condition;
  late String health;
  late String run;
  late String model;


  NewCollction({
    required this.name,
    required this.png,
    required this.value,
    required this.condition,
    required this.health,
    required this.run,
    required this.model
  });

  NewCollction.fromMap(Map<String, dynamic> data){
    name = data[Name];
    png = data[Png];
    value = data[Value];
    condition = data[Condition];
    health = data[Health];
    run = data[Run];
    model = data[Model];
  }
}