//model of our data in the UI
class DataModel {
  final String name;
  final String img;
  final int price;
  final int people;
  final int stars;
  final String description;
  final String location;
  DataModel(
      {required this.img,
      required this.price,
      required this.people,
      required this.description,
      required this.location,
      required this.name,
      required this.stars});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    print("json received");
    print(json);
    return DataModel(
        img: json["img"],
        price: json["price"],
        people: json["people"],
        stars: json["stars"],
        description: json["description"],
        location: json["location"],
        name: json["name"]);
  }
}
