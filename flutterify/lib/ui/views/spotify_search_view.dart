import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterify/ui/cubits/albums/albums_cubit.dart';
import 'package:flutterify/ui/cubits/artists/artists_cubit.dart';
import 'package:flutterify/ui/widgets/album_tile.dart';
import 'package:flutterify/ui/widgets/artist_tile.dart';
import 'package:flutterify/utilities/error_mapper.dart';

class SpotifySearchView extends StatefulWidget {
  const SpotifySearchView({Key? key}) : super(key: key);

  @override
  _SpotifySearchViewState createState() => _SpotifySearchViewState();
}

class _SpotifySearchViewState extends State<SpotifySearchView>
    with SingleTickerProviderStateMixin {
  bool _isAlbumSelected = true;
  bool _isSearchEmpty = true;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _searchController.text.trim();
    setState(() {
      _isSearchEmpty = query.isEmpty;
    });

    if (query.isEmpty) {
      // Reset the state of both Cubits when search is cleared
      context.read<AlbumsCubit>().resetState();
      context.read<ArtistsCubit>().resetState();

      setState(() {
        _isSearchEmpty = true;
      });
    } else {
      if (_isAlbumSelected) {
        context.read<AlbumsCubit>().getAlbums(query);
      } else {
        context.read<ArtistsCubit>().getArtists(query);
      }
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text(
          "Search",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
          textAlign: TextAlign.left,
        ),
        backgroundColor: const Color(0xFF121212),
        centerTitle: false,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.black),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9\s]')),
                ],
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Artists, albums..",
                  hintStyle: const TextStyle(color: Colors.black),
                  fillColor: const Color(0xFFffffff),
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.black,
                  ),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                          },
                        )
                      : null,
                ),
                onChanged: (value) {
                  _onSearchChanged();
                }),
          ),
          if (!_isSearchEmpty)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 25.0),
              child: Row(
                children: [
                  _buildToggleButton(
                    text: 'Albums',
                    isActive: _isAlbumSelected,
                    onPressed: () {
                      setState(() => _isAlbumSelected = true);
                      _onSearchChanged();
                    },
                  ),
                  const SizedBox(width: 20),
                  _buildToggleButton(
                    text: 'Artists',
                    isActive: !_isAlbumSelected,
                    onPressed: () {
                      setState(() => _isAlbumSelected = false);
                      _onSearchChanged();
                    },
                  ),
                ],
              ),
            ),
          Expanded(
            child: _isAlbumSelected && !_isSearchEmpty
                ? BlocBuilder<AlbumsCubit, AlbumsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const Center(),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: (albumsResponse) {
                          if (albumsResponse.items.isEmpty) {
                            return const Center(
                                child: Text(
                              'No albums found',
                              style: TextStyle(color: Colors.white),
                            ));
                          }
                          return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: albumsResponse.items.length,
                            itemBuilder: (context, index) {
                              return AlbumTile(
                                  album: albumsResponse.items[index]);
                            },
                          );
                        },
                        error: (message) => Center(
                            child: Text(mapErrorToMessage(message),
                                style: const TextStyle(color: Colors.white))),
                      );
                    },
                  )
                : BlocBuilder<ArtistsCubit, ArtistsState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const Center(),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: (artistsResponse) {
                          if (artistsResponse.items.isEmpty) {
                            return const Center(
                                child: Text(
                              'No artists found',
                              style: TextStyle(color: Colors.white),
                            ));
                          }
                          return ListView.builder(
                            itemCount: artistsResponse.items.length,
                            itemBuilder: (context, index) {
                              return ArtistTile(
                                  artist: artistsResponse.items[index]);
                            },
                          );
                        },
                        error: (message) => Center(
                            child: Text(
                          mapErrorToMessage(message),
                          style: const TextStyle(color: Colors.white),
                        )),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildToggleButton({
    required String text,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    final backgroundColor = isActive ? Colors.green : Colors.transparent;
    final textColor = isActive ? Colors.white : Colors.white;
    final borderColor = isActive ? Colors.transparent : Colors.white54;

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
