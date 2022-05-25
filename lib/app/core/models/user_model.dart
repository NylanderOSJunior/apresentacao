import 'dart:convert';

class UserModel {
  late String? name;
  late String? username;
  late String? avatarUrl;
  late String? email;
  late bool? isAdmin;
  late String? address;
  UserModel({
    this.name,
    this.username,
    this.avatarUrl,
    this.email,
    this.isAdmin,
    this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'username': username,
      'avatarUrl': avatarUrl,
      'email': email,
      'isAdmin': isAdmin,
      'address': address
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      username: map['username'],
      avatarUrl: map['avatarUrl'],
      email: map['email'],
      isAdmin: map['isAdmin'],
      address: map['address'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));
}
