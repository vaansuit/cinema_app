import 'package:cinema_app/app/utils/images.dart';
import 'package:flutter/material.dart';

import 'widgets/movie_card_catalog.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  'Em cartaz',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MovieCardCatalog(
                    moviePoster: posterOne,
                  ),
                  MovieCardCatalog(
                    moviePoster: posterTwo,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MovieCardCatalog(
                    moviePoster: posterThree,
                  ),
                  MovieCardCatalog(
                    moviePoster: posterFour,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MovieCardCatalog(
                    moviePoster: posterFive,
                  ),
                  MovieCardCatalog(
                    moviePoster: posterSix,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
