class PaymentData {
  final int id;
  final String cardNumber;
  final DateTime expirationDate;
  final String cvv;
  final String firstName;
  final String lastName;
  final String email;
  final int paymentMethodId;
  final int userId;

  PaymentData({
    required this.id,
    required this.cardNumber,
    required this.expirationDate,
    required this.cvv,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.paymentMethodId,
    required this.userId,
  });
}