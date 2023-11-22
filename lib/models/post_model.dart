class Post {
  int? id;
  int? userId;
  String? comment;
  String? url;
  String? photo;
  int? likes;
  int? shares;

  Post({
    this.id,
    this.userId,
    this.comment,
    this.url,
    this.photo,
    this.likes,
    this.shares,
  });
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'] as int,
        userId: int.parse(json['userId'] as String), // Convert userId from String to int
        comment: json['comment'] as String,
        photo: json['photo'] as String,
        url: json['url'] as String,
        likes: json['likes'] as int,
        shares: json['shares'] as int
    );
  }
}