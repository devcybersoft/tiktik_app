class VideoPost {
  final String camption;
  final String videoUrl;
  final int likes;
  final int views;

  VideoPost({
    required this.camption,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });
}
