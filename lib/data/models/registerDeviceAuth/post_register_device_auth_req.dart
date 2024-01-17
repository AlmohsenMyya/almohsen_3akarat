class PostRegisterDeviceAuthReq {
  String? username;
  String? password;
  String? email;
  String? name;
  int? role;

  PostRegisterDeviceAuthReq(
      {this.username, this.password, this.email, this.name, this.role});

  PostRegisterDeviceAuthReq.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    email = json['email'];
    name = json['name'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (username != null) {
      data['username'] = username;
    }
    if (password != null) {
      data['password'] = password;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (role != null) {
      data['role'] = role;
    }
    return data;
  }
}
