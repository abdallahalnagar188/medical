class VideoModel {
  final String id;
  final String title;
  final String content;
  final String? videoPath; // Made optional for content-only items
  final String imagePath;

  VideoModel({
    required this.id,
    required this.title,
    required this.content,
    this.videoPath, // Optional parameter
    required this.imagePath,
  });
}
