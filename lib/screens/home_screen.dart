import 'package:flutter/material.dart';
import '../widgets/movie_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CineTrack'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular Movies',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            const MovieCard(
              title: 'Interstellar',
              genre: 'Sci-Fi',
              rating: 4.9,
              image: 'lib/assets/interstellar.jpg',
            ),

            const SizedBox(height: 10),

            const MovieCard(
              title: 'Inception',
              genre: 'Sci-Fi',
              rating: 4.8,
              image: 'lib/assets/inception.jpg',
            ),

            const SizedBox(height: 10),

            const MovieCard(
              title: 'The Dark Knight',
              genre: 'Action',
              rating: 4.9,
              image: 'lib/assets/dark_knight.jpg',
            ),
          ],
        ),
      ),
    );
  }
}