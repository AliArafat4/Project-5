class UsersModel {
  String? msg;
  List<Data>? data;
  int? codeState;

  UsersModel({this.msg, this.data, this.codeState});

  UsersModel.fromJson(Map<String, dynamic> json) {
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
  String? email;
  String? name;
  String? userId;
  About? about;
  List<Education>? education;
  List<Projects>? projects;
  List<Skills>? skills;
  List<Social>? social;

  Data(
      {this.id,
      this.email,
      this.name,
      this.userId,
      this.about,
      this.education,
      this.projects,
      this.skills,
      this.social});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    userId = json['user_id'];
    about = json['bio'];
    if (json['education'] != null) {
      education = <Education>[];
      json['education'].forEach((v) {
        education!.add(Education.fromJson(v));
      });
    }
    if (json['projects'] != null) {
      projects = <Projects>[];
      json['projects'].forEach((v) {
        projects!.add(Projects.fromJson(v));
      });
    }
    if (json['skills'] != null) {
      skills = <Skills>[];
      json['skills'].forEach((v) {
        skills!.add(Skills.fromJson(v));
      });
    }
    if (json['social'] != null) {
      social = <Social>[];
      json['social'].forEach((v) {
        social!.add(Social.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['name'] = name;
    data['user_id'] = userId;
    data['about'] = about;

    if (education != null) {
      data['education'] = education!.map((v) => v.toJson()).toList();
    }
    if (projects != null) {
      data['projects'] = projects!.map((v) => v.toJson()).toList();
    }
    if (skills != null) {
      data['skills'] = skills!.map((v) => v.toJson()).toList();
    }
    if (social != null) {
      data['social'] = social!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class About {
  int? id;
  String? name;
  String? about;
  String? image;
  String? phone;
  String? userId;
  String? birthday;
  String? location;
  String? titlePosition;

  About(
      {this.id,
      this.name,
      this.about,
      this.image,
      this.phone,
      this.userId,
      this.birthday,
      this.location,
      this.titlePosition});

  About.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    about = json['bio'];
    image = json['image'];
    phone = json['phone'];
    userId = json['user_id'];
    birthday = json['birthday'];
    location = json['location'];
    titlePosition = json['title_position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['about'] = about;
    data['image'] = image;
    data['phone'] = phone;
    data['user_id'] = userId;
    data['birthday'] = birthday;
    data['location'] = location;
    data['title_position'] = titlePosition;
    return data;
  }
}

class Education {
  int? id;
  String? level;
  String? college;
  String? userId;
  String? gradDate;
  String? university;
  String? specialization;

  Education(
      {this.id,
      this.level,
      this.college,
      this.userId,
      this.gradDate,
      this.university,
      this.specialization});

  Education.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    level = json['level'];
    college = json['college'];
    userId = json['user_id'];
    gradDate = json['gradDate'];
    university = json['university'];
    specialization = json['specialization'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['level'] = level;
    data['college'] = college;
    data['user_id'] = userId;
    data['gradDate'] = gradDate;
    data['university'] = university;
    data['specialization'] = specialization;
    return data;
  }
}

class Projects {
  int? id;
  String? name;
  String? state;
  String? userId;
  String? description;

  Projects({this.id, this.name, this.state, this.userId, this.description});

  Projects.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    state = json['state'];
    userId = json['user_id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['state'] = state;
    data['user_id'] = userId;
    data['description'] = description;
    return data;
  }
}

class Skills {
  int? id;
  String? skill;
  String? userId;

  Skills({this.id, this.skill, this.userId});

  Skills.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    skill = json['skill'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['skill'] = skill;
    data['user_id'] = userId;
    return data;
  }
}

class Social {
  int? id;
  String? social;
  String? userId;
  String? userName;

  Social({this.id, this.social, this.userId, this.userName});

  Social.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    social = json['social'];
    userId = json['user_id'];
    userName = json['user_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['social'] = social;
    data['user_id'] = userId;
    data['user_name'] = userName;
    return data;
  }
}
