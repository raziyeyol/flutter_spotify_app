import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterify/core/DI/injection_container.dart';
import 'package:flutterify/ui/cubits/albums/albums_cubit.dart';
import 'package:flutterify/ui/cubits/artists/artists_cubit.dart';
import 'package:flutterify/ui/views/spotify_search_view.dart';

void main() async {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AlbumsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ArtistsCubit>(),
        ),
      ],
      child: const MaterialApp(
        home: SpotifySearchView(),
      ),
    );
  }
}
