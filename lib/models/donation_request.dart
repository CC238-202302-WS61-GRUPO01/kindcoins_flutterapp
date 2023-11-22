class DonationRequest {
  int? amount;
  int? typeOfDonationId;
  int? campaignId;
  int? userId;

  DonationRequest({
    this.amount,
    this.typeOfDonationId,
    this.campaignId,
    this.userId,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['typeOfDonationId'] = this.typeOfDonationId;
    data['campaignId'] = this.campaignId;
    data['userId'] = this.userId;
    return data;
  }
  DonationRequest.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    typeOfDonationId = json['typeOfDonationId'];
    campaignId = json['campaignId'];
    userId = json['userId'];
  }
}