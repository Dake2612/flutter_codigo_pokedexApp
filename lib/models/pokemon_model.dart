class Pokemon {
  String name;
  String img;
  List<String> type;
  String num;
  String height;

  Pokemon({
    required this.name,
    required this.img,
    required this.type,
    required this.num,
    required this.height
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        name: json["name"],
        img: json["img"],
        num: json["num"],
        height: json["height"],
        type: List<String>.from(json["type"].map((item)=>item)),
      );
}
