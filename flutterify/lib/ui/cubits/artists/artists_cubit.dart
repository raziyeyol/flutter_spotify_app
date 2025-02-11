import 'package:bloc/bloc.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/domain/repositories/spotify_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists_state.dart';
part 'artists_cubit.freezed.dart';

class ArtistsCubit extends Cubit<ArtistsState> {
  final ISpotifyRepository repository;

  ArtistsCubit({required this.repository})
      : super(const ArtistsState.initial());

  Future<void> getArtists(String query) async {
    emit(const ArtistsState.loading());
    try {
      final response = await repository.getArtists(query);
      emit(ArtistsState.Loaded(response));
    } catch (e) {
      emit(ArtistsState.error(e.toString()));
    }
  }
}
