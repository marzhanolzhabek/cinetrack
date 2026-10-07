import 'package:flutter/material.dart';
import '../screens/movie_detail_screen.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String genre;
  final double rating;
  final String image;

  const MovieCard({
    super.key,
    required this.title,
    required this.genre,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MovieDetailScreen(
              title: title,
              genre: genre,
              rating: rating,
              image: image,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: 90,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 5),
                        Text('$rating'),
                      ],
                    ),

                    const SizedBox(height: 8),

                    Text(genre),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}