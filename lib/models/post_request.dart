class PostRequest {
  int? userId;
  String? comment;
  String? url;
  String? photo;
  int? likes;
  int? shares;

  PostRequest({
    this.userId,
    this.comment,
    this.url,
    this.photo,
    this.likes,
    this.shares,
  });

  PostRequest.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    comment = json['comment'];
    url = json['url'];
    likes = json['likes'];
    shares = json['shares'];
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['comment'] = this.comment;
    data['url'] = this.url;
    data['likes'] = this.likes;
    data['shares'] = this.shares;
    data['photo'] = this.photo;
    return data;
  }
}