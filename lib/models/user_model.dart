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
}