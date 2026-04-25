import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class GeneroModel {
  final String id;
  final String name;


  GeneroModel({
    required this.id,
    required this.name,
  });
  

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GeneroModel.fromMap(Map<String, dynamic> map) {
    return GeneroModel(
      id: map['id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory GeneroModel.fromJson(String source) => GeneroModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
