import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterify/ui/cubits/albums/albums_cubit.dart';
import 'package:flutterify/ui/cubits/artists/artists_cubit.dart';
import 'package:flutterify/ui/views/spotify_search_view.dart';
import 'package:mocktail/mocktail.dart';

class MockAlbumsCubit extends MockCubit<AlbumsState> implements AlbumsCubit {}

class MockArtistsCubit extends MockCubit<ArtistsState>
    implements ArtistsCubit {}

void main() {
  late MockAlbumsCubit albumsCubit;
  late MockArtistsCubit artistsCubit;

  setUp(() {
    albumsCubit = MockAlbumsCubit();
    artistsCubit = MockArtistsCubit();
  });

  Widget createTestableWidget() {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AlbumsCubit>.value(value: albumsCubit),
          BlocProvider<ArtistsCubit>.value(value: artistsCubit),
        ],
        child: const SpotifySearchView(),
      ),
    );
  }

  testWidgets('displays initial state message', (tester) async {
    when(() => albumsCubit.state).thenReturn(const AlbumsStateInitial());
    when(() => artistsCubit.state).thenReturn(const ArtistsStateInitial());

    await tester.pumpWidget(createTestableWidget());

    expect(find.text('Enter a search query'), findsOneWidget);
  });

  testWidgets('shows loading indicator when state is loading', (tester) async {
    when(() => albumsCubit.state).thenReturn(const AlbumsStateLoading());
    await tester.pumpWidget(createTestableWidget());

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });

  testWidgets('shows error message when state is error', (tester) async {
    when(() => albumsCubit.state)
        .thenReturn(const AlbumsStateError('Error occurred'));
    await tester.pumpWidget(createTestableWidget());

    expect(find.text('Error: Error occurred'), findsOneWidget);
  });
}
