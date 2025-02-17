import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutterify/data/models/spotify_album.dart';
import 'package:intl/intl.dart';

class AlbumTile extends StatelessWidget {
  final SpotifyAlbum album;

  const AlbumTile({Key? key, required this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
            child: AspectRatio(
              aspectRatio: 1.2,
              child: album.images.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: album.images.first.url,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: Colors.grey,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey,
                        child: const Icon(Icons.error),
                      ),
                    )
                  : Container(color: Colors.grey),
            ),
          ),
          Text(
            album.albumName,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            album.artists.map((a) => a.artistName).join(', '),
            style: const TextStyle(
                fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${toBeginningOfSentenceCase(album.albumType)} • ${album.releaseDate.substring(0, 4)}',
            style: const TextStyle(
                fontSize: 13, color: Colors.grey, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
