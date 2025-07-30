import 'package:tiktik_app/domain/datasource/video_posts_datasource.dart';
import 'package:tiktik_app/domain/entities/video_post.dart';
import 'package:tiktik_app/infrastructure/models/local_video_model.dart';
import 'package:tiktik_app/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostsDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    // TODO: implement getFavoriteVideosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
        .toList();
    return newVideos;
  }
}
