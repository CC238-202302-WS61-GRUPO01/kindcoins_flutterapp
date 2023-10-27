class Post {
  final int id;
  final int userId;
  final String comment;
  final String url;
  final String photo;
  final int likes;
  final int shares;

  Post({
    required this.id,
    required this.userId,
    required this.comment,
    required this.url,
    required this.photo,
    required this.likes,
    required this.shares,
  });
}