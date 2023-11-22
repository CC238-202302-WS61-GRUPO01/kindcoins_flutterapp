class CampaignRequest {
  String? name;
  String? slogan;
  String? headerPhoto;
  String? additionalPhoto;
  String? description;
  int? goal;
  int? userId;
  int? typeOfDonationId;

  CampaignRequest(
  {
    this.name, this.slogan, this.headerPhoto,
    this.additionalPhoto, this.description,
    this.goal, this.userId, this.typeOfDonationId}
      );

  CampaignRequest.fromJson(Map<String, dynamic> json){
    name = json['name'];
    slogan = json['slogan'];
    headerPhoto = json['headerPhoto'];
    additionalPhoto = json['additionalPhoto'];
    description = json['description'];
    goal = json['goal'];
    userId = json['userId'];
    typeOfDonationId = json['typeOfDonationId'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slogan'] = this.slogan;
    data['headerPhoto'] = this.headerPhoto;
    data['additionalPhoto'] = this.additionalPhoto;
    data['description'] = this.description;
    data['goal'] = this.goal;
    data['userId'] = this.userId;
    data['typeOfDonationId'] = this.typeOfDonationId;
    return data;
  }
}


