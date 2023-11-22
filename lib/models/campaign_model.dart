class Campaign {
  final int id;
  final String name;
  final String slogan;
  final String headerPhoto;
  final String additionalPhoto;
  final String description;
  final int typeOfDonationId;
  final int goal;
  final int userId;

  Campaign({
    required this.id,
    required this.name,
    required this.slogan,
    required this.headerPhoto,
    required this.additionalPhoto,
    required this.description,
    required this.typeOfDonationId,
    required this.goal,
    required this.userId,
  });

  factory Campaign.fromJson(Map<String, dynamic> json) {
    return Campaign(
      id: json['id'] as int,
      name: json['name'] as String,
      slogan: json['slogan'] as String,
      headerPhoto: json['headerPhoto'] as String,
      additionalPhoto: json['aditionalPhoto'] as String,
      description: json['description'] as String,
      typeOfDonationId: json['typeOfDonation']['id'] as int,
      goal: json['goal'] as int,
      userId: json['user']['id'] as int
    );
  }
}