import 'package:flutterify/data/models/spotify_album.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/domain/api/spotify_api.dart';

abstract class ISpotifyRepository {
  Future<SpotifyApiResponse<SpotifyAlbum>> getAlbums(String query);
  Future<SpotifyApiResponse<SpotifyArtist>> getArtists(String query);
}

class SpotifyRepository implements ISpotifyRepository {
  const SpotifyRepository(this._api);

  final SpotifyApi _api;

  Future<SpotifyApiResponse<SpotifyAlbum>> getAlbums(String query) async {
    try {
      final albumSearchResponse =
          await _api.getAlbums(query: query, type: 'album');
      return albumSearchResponse.albums;
    } catch (e) {
      rethrow;
    }
  }

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
