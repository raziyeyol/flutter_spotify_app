import 'package:dio/dio.dart';
import 'package:flutterify/data/models/spotify_album.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/domain/api/models/spotify_album_search_response.dart';
import 'package:flutterify/domain/api/models/spotify_artist_search_response.dart';
import 'package:retrofit/http.dart';

part 'spotify_api.g.dart';

//communicates with the Spotify API
@RestApi()
abstract class SpotifyApi {
  factory SpotifyApi(Dio dio) = _SpotifyApi;

  @GET('/search')
  Future<SpotifyAlbumSearchResponse<SpotifyAlbum>> getAlbums({
    @Query('q') required String query,
    @Query('type') required String type,
  });

  @GET('/search')
  Future<SpotifyArtistSearchResponse<SpotifyArtist>> getArtists({
    @Query('q') required String query,
    @Query('type') required String type,
  });
}
