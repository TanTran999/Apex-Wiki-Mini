const String queryCreate_Legends =
    "id INTEGER PRIMARY KEY, Legend_Name TEXT, Real_Name TEXT, Gender TEXT, "
    "Age INTEGER, Height INTEGER, Home TEXT, Image TEXT)";

class Legend {
  // static const Legend shion = Legend(
  //     id: 0,
  //     legendName: 'kusogakick',
  //     realName: 'shion',
  //     gender: 'female',
  //     age: 18,
  //     height: 148,
  //     home: 'hololive',
  //     path: 'assets/images/shion.png',
  // );
  Legend(
      {required this.id,
      required this.legendName,
      required this.realName,
      required this.gender,
      required this.age,
      required this.height,
      required this.home,
      required this.path});
  int? id;
  String? legendName;
  String? realName;
  String? gender;
  int? age;
  int? height;
  String? home;
  String? path;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'Legend_Name': legendName,
      'Real_Name': realName,
      'Gender': gender,
      'Age': age,
      'Height': height,
      'Home': home,
      'Image': path,
    };
  }

  // @override
  // String toString() {
  //   return 'legend{id: $id, name = $legendName, realname = ${realName != null ? realName : 'Unknown'}, age = ${age != null ? age : 'Unknown'}}';
  // }
}
