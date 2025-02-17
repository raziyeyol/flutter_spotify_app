import 'package:bloc/bloc.dart';
import 'package:flutterify/data/models/spotify_artist.dart';
import 'package:flutterify/domain/api/models/spotify_api_response.dart';
import 'package:flutterify/domain/repositories/spotify_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'artists_state.dart';
part 'artists_cubit.freezed.dart';

// This is the Cubit that manages the state of the Artists screen
class ArtistsCubit extends Cubit<ArtistsState> {
  final ISpotifyRepository repository;

  ArtistsCubit({required this.repository}) : super(const ArtistsStateInitial());

  Future<void> getArtists(String query) async {
    emit(const ArtistsStateLoading());
    try {
      final response = await repository.getArtists(query);
      emit(ArtistsStateLoaded(response));
    } catch (e) {
      emit(ArtistsStateError(e.toString()));
    }
  }

  void resetState() {
    emit(const ArtistsStateInitial());
  }
}
