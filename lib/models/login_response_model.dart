class LoginResponseModel {
  Admin? admin;
  String? token;

  LoginResponseModel({this.admin, this.token});

  LoginResponseModel.fromJson(Map<String, dynamic> json) {
    admin = json['admin'] != null ? Admin.fromJson(json['admin']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (admin != null) {
      data['admin'] = admin!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class Admin {
  int? id;
  String? name;
  String? email;
  String? createdAt;
  String? updatedAt;

  Admin({this.id, this.name, this.email, this.createdAt, this.updatedAt});

  Admin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
