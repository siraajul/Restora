class User {
  User({
    this.id,
    this.email,
    this.password,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};

    data['id'] = id;
    data['email'] = email;
    data['password'] = password;

    return data;
  }

  String? id;
  String? email;
  String? password;
}
