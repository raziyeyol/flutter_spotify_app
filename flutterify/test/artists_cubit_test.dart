import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/ui/cubits/artists/artists_cubit.dart';
import 'package:flutterify/domain/repositories/spotify_repository.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:mocktail/mocktail.dart';

// Mock repository
class MockSpotifyRepository extends Mock implements ISpotifyRepository {}

void main() {
  late ArtistsCubit artistsCubit;
  late MockSpotifyRepository mockRepository;

  setUp(() {
    mockRepository = MockSpotifyRepository();
    artistsCubit = ArtistsCubit(repository: mockRepository);
  });

  tearDown(() {
    artistsCubit.close();
  });

  group('ArtistsCubit', () {
    const query = 'angelina';

    test('Initial state is ArtistsStateInitial', () {
      expect(artistsCubit.state, const ArtistsStateInitial());
    });

    blocTest<ArtistsCubit, ArtistsState>(
      'emits [ArtistsStateLoading, ArtistsStateLoaded] when getArtists succeeds',
      build: () {
        when(() => mockRepository.getArtists(query)).thenAnswer(
          (_) async => SpotifyApiResponse<SpotifyArtist>.fromJson({
            'href': '',
            'limit': 10,
            'next': null,
            'offset': 0,
            'previous': null,
            'total': 1,
            'items': [
              {
                'id': '1',
                'name': 'Test Artist',
                'type': 'artist',
                'images': [],
              },
            ],
          }, (json) => SpotifyArtist.fromJson(json as Map<String, dynamic>)),
        );
        return artistsCubit;
      },
      act: (cubit) => cubit.getArtists(query),
      expect: () => [
        const ArtistsStateLoading(),
        isA<ArtistsStateLoaded>(),
      ],
      verify: (_) {
        verify(() => mockRepository.getArtists(query)).called(1);
      },
    );

    blocTest<ArtistsCubit, ArtistsState>(
      'emits [ArtistsStateLoading, ArtistsStateError] when getArtists fails',
      build: () {
        when(() => mockRepository.getArtists(query))
            .thenThrow(Exception('API error'));
        return artistsCubit;
      },
      act: (cubit) => cubit.getArtists(query),
      expect: () => [
        const ArtistsStateLoading(),
        isA<ArtistsStateError>(),
      ],
    );
  });
}
