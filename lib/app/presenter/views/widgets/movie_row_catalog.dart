import 'package:flutter/material.dart';

import 'movie_card_catalog.dart';

class MovieRowCatalog extends StatelessWidget {
  final String firstPoster;
  final String secondPoster;

  const MovieRowCatalog({
    Key? key,
    required this.firstPoster,
    required this.secondPoster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MovieCardCatalog(
          moviePoster: firstPoster,
        ),
        MovieCardCatalog(
          moviePoster: secondPoster,
        ),
      ],
    );
  }
}
