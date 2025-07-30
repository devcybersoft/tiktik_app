import 'package:tiktik_app/domain/entities/video_post.dart';
import 'package:tiktik_app/domain/repositories/video_posts_repository.dart';
import 'package:tiktik_app/domain/datasource/video_posts_datasource.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
