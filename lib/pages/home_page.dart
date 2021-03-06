import 'package:flutter/material.dart';

import 'package:card_swiper/card_swiper.dart';
import 'package:movies/widgets/swiper_card_widget.dart';
import 'package:movies/providers/movie_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final moviesProvider = MoviesProvider();
    moviesProvider.getNowPlaying();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movies '),
          backgroundColor: Colors.indigoAccent,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )
          ],
        ),
        body: Column(children: [
          SwiperCard(
            movies: [1, 2, 3, 5],
          ),
        ]),
      ),
    );
  }
}
