class UserRequest {
  String? firstName;
  String? lastName;
  String? dni;
  String? phone;
  String? email;
  String? password;
  String? photo;
  int? suscriptionPlanId;

  UserRequest(
      {this.firstName,
        this.lastName,
        this.dni,
        this.phone,
        this.email,
        this.password,
        this.photo,
        this.suscriptionPlanId});

  UserRequest.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    dni = json['dni'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    photo = json['photo'];
    suscriptionPlanId = json['suscriptionPlanId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['dni'] = this.dni;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['photo'] = this.photo;
    data['suscriptionPlanId'] = this.suscriptionPlanId;
    return data;
  }
}