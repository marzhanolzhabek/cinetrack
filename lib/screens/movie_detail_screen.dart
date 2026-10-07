import 'package:flutter/material.dart';

class MovieDetailScreen extends StatefulWidget {
  final String title;
  final String genre;
  final double rating;
  final String image;

  const MovieDetailScreen({
    super.key,
    required this.title,
    required this.genre,
    required this.rating,
    required this.image,
  });

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  bool isFavorite = false;
  bool isInWatchlist = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  widget.image,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),

                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                      icon: Icon(
                        isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                      ),
                      const SizedBox(width: 5),
                      Text('${widget.rating}'),
                    ],
                  ),

                  const SizedBox(height: 16),

                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Chip(
                        label: Text(widget.genre),
                      ),
                      const Chip(
                        label: Text('Drama'),
                      ),
                      const Chip(
                        label: Text('Adventure'),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'About Movie',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Discover the story, characters and adventure of this movie.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isInWatchlist = !isInWatchlist;
                    });
                  },
                  child: Text(
                    isInWatchlist
                        ? 'Added to Watchlist ✓'
                        : 'Add to Watchlist',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}