class Legend {
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

  @override
  String toString() {
    return 'legend{id: $id, name = $legendName, realname = ${realName != null ? realName : 'Unknown'}, age = ${age != null ? age : 'Unknown'}, path = $path';
  }
}
