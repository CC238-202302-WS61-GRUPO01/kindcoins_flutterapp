class User {
  final int id;
  final String firstName;
  final String lastName;
  final String dni;
  final String phone;
  final String email;
  final String password;
  final int subscriptionPlanId;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dni,
    required this.phone,
    required this.email,
    required this.password,
    required this.subscriptionPlanId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as int,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dni: json['dni'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      subscriptionPlanId: json['suscriptionPlan']['id'] as int,
    );
  }
}