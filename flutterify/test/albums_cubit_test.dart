// Mock repository class
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutterify/data/models/spotify_album.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/domain/repositories/spotify_repository.dart';
import 'package:flutterify/ui/cubits/albums/albums_cubit.dart';
import 'package:mocktail/mocktail.dart';

// Mock repository
class MockSpotifyRepository extends Mock implements ISpotifyRepository {}

void main() {
  late AlbumsCubit albumsCubit;
  late MockSpotifyRepository mockRepository;

  setUp(() {
    mockRepository = MockSpotifyRepository();
    albumsCubit = AlbumsCubit(repository: mockRepository);
  });

  tearDown(() {
    albumsCubit.close();
  });

  group('AlbumsCubit', () {
    const query = 'test';

    test('Initial state is AlbumsStateInitial', () {
      expect(albumsCubit.state, const AlbumsStateInitial());
    });

    blocTest<AlbumsCubit, AlbumsState>(
      'emits [AlbumsStateLoading, AlbumsStateLoaded] when getAlbums succeeds',
      build: () {
        when(() => mockRepository.getAlbums(query)).thenAnswer(
          (_) async => SpotifyApiResponse<SpotifyAlbum>.fromJson({
            'href': '',
            'limit': 10,
            'next': null,
            'offset': 0,
            'previous': null,
            'total': 1,
            'items': [
              {
                'id': '1',
                'name': 'Test Album',
                'album_type': 'album',
                'release_date': '2021-01-01',
                'images': [],
                'artists': [],
              },
            ],
          }, (json) => SpotifyAlbum.fromJson(json as Map<String, dynamic>)),
        );
        return albumsCubit;
      },
      act: (cubit) => cubit.getAlbums(query),
      expect: () => [
        const AlbumsStateLoading(),
        isA<AlbumsStateLoaded>(),
      ],
      verify: (_) {
        verify(() => mockRepository.getAlbums(query)).called(1);
      },
    );

    blocTest<AlbumsCubit, AlbumsState>(
      'emits [AlbumsStateLoading, AlbumsStateError] when getAlbums fails',
      build: () {
        when(() => mockRepository.getAlbums(query))
            .thenThrow(Exception('API error'));
        return albumsCubit;
      },
      act: (cubit) => cubit.getAlbums(query),
      expect: () => [
        const AlbumsStateLoading(),
        isA<AlbumsStateError>(),
      ],
    );
  });
}
