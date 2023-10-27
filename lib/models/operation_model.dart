class Operation {
  final int campaignId;
  final int userId;
  final String operationType;
  final DateTime operationDate;
  final double quantityDonation;

  Operation({
    required this.campaignId,
    required this.userId,
    required this.operationType,
    required this.operationDate,
    required this.quantityDonation,
  });
}