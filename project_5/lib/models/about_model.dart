class AboutModel {
  String? msg;
  List<Data>? data;
  int? codeState;

  AboutModel({this.msg, this.data, this.codeState});

  AboutModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    codeState = json['codeState'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['codeState'] = codeState;
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? titlePosition;
  String? phone;
  String? location;
  String? birthday;
  String? bio;
  String? userId;
  String? image;
  String? email;

  Data(
      {this.id,
      this.name,
      this.titlePosition,
      this.phone,
      this.location,
      this.birthday,
      this.bio,
      this.userId,
      this.image,
      this.email});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    titlePosition = json['title_position'];
    phone = json['phone'];
    location = json['location'];
    birthday = json['birthday'];
    bio = json['bio'];
    userId = json['user_id'];
    image = json['image'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title_position'] = titlePosition;
    data['phone'] = phone;
    data['location'] = location;
    data['birthday'] = birthday;
    data['bio'] = bio;
    data['user_id'] = userId;
    data['image'] = image;
    data['email'] = email;
    return data;
  }
}
