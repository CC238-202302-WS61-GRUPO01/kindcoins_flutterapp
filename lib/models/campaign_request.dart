class CampaignRequest {
  String? name;
  String? slogan;
  String? headerPhoto;
  String? additionalPhoto;
  String? description;
  int? typeOfDonationId;
  int? goal;
  int? userId;

  CampaignRequest({
    this.name,
    this.slogan,
    this.headerPhoto,
    this.additionalPhoto,
    this.description,
    this.typeOfDonationId,
    this.goal,
    this.userId,
  });

  CampaignRequest.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String;
    slogan = json['slogan'] as String;
    headerPhoto = json['headerPhoto'] as String;
    additionalPhoto = json['additionalPhoto'] as String;
    description = json['description'] as String;
    typeOfDonationId = json['typeOfDonationId'] as int;
    goal = json['goal'] as int;
    userId = json['userId'] as int;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['slogan'] = slogan;
    data['headerPhoto'] = headerPhoto;
    data['additionalPhoto'] = additionalPhoto;
    data['description'] = description;
    data['typeOfDonationId'] = typeOfDonationId;
    data['goal'] = goal;
    data['userId'] = userId;
    return data;
  }

  //Set the campaign name
  void setName(String name) {
    this.name = name;
  }

  //Set the campaign slogan
  void setSlogan(String slogan) {
    this.slogan = slogan;
  }

  //Set the campaign header photo
  void setHeaderPhoto(String headerPhoto) {
    this.headerPhoto = headerPhoto;
  }

  //Set the campaign additional photo
  void setAdditionalPhoto(String additionalPhoto) {
    this.additionalPhoto = additionalPhoto;
  }

  //Set the campaign description
  void setDescription(String description) {
    this.description = description;
  }

  //Set the campaign type of donation
  void setTypeOfDonationId(int typeOfDonationId) {
    this.typeOfDonationId = typeOfDonationId;
  }

  //Set the campaign goal
  void setGoal(int goal) {
    this.goal = goal;
  }

  //Set the campaign user id
  void setUserId(int userId) {
    this.userId = userId;
  }
}
