//model of our data in the UI
class DataModel {
  final String name;
  final String img;
  final int price;
  final int people;
  final int starts;
  final String description;
  final String location;
  DataModel(
      {required this.img,
      required this.price,
      required this.people,
      required this.starts,
      required this.description,
      required this.location,
      required this.name});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        img: json["img"],
        price: json["price"],
        people: json["people"],
        starts: json["starts"],
        description: json["description"],
        location: json["location"],
        name: json["name"]);
  }
}
