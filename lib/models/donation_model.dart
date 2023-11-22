class Donation {
  int? id;
  int? amount;
  int? typeOfDonationId;
  int? campaignId;
  int? userId;

  Donation({
    this.id,
    this.amount,
    this.typeOfDonationId,
    this.campaignId,
    this.userId,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['typeOfDonationId'] = this.typeOfDonationId;
    data['campaignId'] = this.campaignId;
    data['userId'] = this.userId;
    return data;
  }
  Donation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    typeOfDonationId = json['typeOfDonationId'];
    campaignId = json['campaignId'];
    userId = json['userId'];
  }
}