import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterify/data/models/spotify_artist.dart';

class ArtistTile extends StatelessWidget {
  final SpotifyArtist artist;

  const ArtistTile({Key? key, required this.artist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey,
        backgroundImage: artist.images.isNotEmpty
            ? CachedNetworkImageProvider(artist.images.first.url)
            : null,
        child: artist.images.isEmpty
            ? const Icon(Icons.person, color: Colors.white)
            : null,
      ),
      title: Text(
        artist.artistName,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
