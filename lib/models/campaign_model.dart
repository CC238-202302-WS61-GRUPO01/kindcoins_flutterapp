class Campaign {
  final int id;
  final String name;
  final String slogan;
  final String headerPhoto;
  final String additionalPhoto;
  final String description;
  final int typeOfDonationId;
  final int goal;

  Campaign({
    required this.id,
    required this.name,
    required this.slogan,
    required this.headerPhoto,
    required this.additionalPhoto,
    required this.description,
    required this.typeOfDonationId,
    required this.goal,
  });
}