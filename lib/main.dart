import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktik_app/config/theme/app_theme.dart';
import 'package:tiktik_app/infrastructure/datasource/local_video_datasource_impl.dart';
import 'package:tiktik_app/infrastructure/repositories/video_posts_repository.dart';
import 'package:tiktik_app/presentation/providers/discover_provider.dart';
import 'package:tiktik_app/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostReposity = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource(),
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) =>
              DiscoverProvider(videosRepositoy: videoPostReposity)
                ..loadNextPage(),
        ),
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}
