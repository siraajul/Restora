class AuthDTO {
  String? accessToken;
  String? refreshToken;
  String? expiresIn;
  String? userId;
  List<String>? roles;
  int? statusCode;
  List<Errors>? errors;
  bool? isSuccess;

  AuthDTO(
      {this.accessToken,
      this.refreshToken,
      this.expiresIn,
      this.userId,
      this.roles,
      this.statusCode,
      this.errors,
      this.isSuccess});

  AuthDTO.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    expiresIn = json['expiresIn'];
    userId = json['userId'];
    roles = json['roles'].cast<String>();
    statusCode = json['statusCode'];
    if (json['errors'] != null) {
      errors = <Errors>[];
      json['errors'].forEach((v) {
        errors!.add(new Errors.fromJson(v));
      });
    }
    isSuccess = json['isSuccess'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['refreshToken'] = this.refreshToken;
    data['expiresIn'] = this.expiresIn;
    data['userId'] = this.userId;
    data['roles'] = this.roles;
    data['statusCode'] = this.statusCode;
    if (this.errors != null) {
      data['errors'] = this.errors!.map((v) => v.toJson()).toList();
    }
    data['isSuccess'] = this.isSuccess;
    return data;
  }
}

class Errors {
  String? code;
  String? description;

  Errors({this.code, this.description});

  Errors.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['description'] = this.description;
    return data;
  }
}
