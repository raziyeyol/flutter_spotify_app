import 'package:flutterify/data/models/spotify_album.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/domain/api/spotify_api.dart';

// This is the interface that the SpotifyRepository implements
abstract class ISpotifyRepository {
  Future<SpotifyApiResponse<SpotifyAlbum>> getAlbums(String query);
  Future<SpotifyApiResponse<SpotifyArtist>> getArtists(String query);
}

// This is the implementation of the SpotifyRepository
class SpotifyRepository implements ISpotifyRepository {
  const SpotifyRepository(this._api);

  final SpotifyApi _api;

  // The getAlbums and getArtists methods are used to search for albums and artists respectively
  Future<SpotifyApiResponse<SpotifyAlbum>> getAlbums(String query) async {
    try {
      final albumSearchResponse =
          await _api.getAlbums(query: query, type: 'album');
      return albumSearchResponse.albums;
    } catch (e) {
      rethrow;
    }
  }

  // The getArtists method is used to search for artists
  Future<SpotifyApiResponse<SpotifyArtist>> getArtists(String query) async {
    try {
      final artistSearchResponse =
          await _api.getArtists(query: query, type: 'artist');
      return artistSearchResponse.artists;
    } catch (e) {
      rethrow;
    }
  }
}
