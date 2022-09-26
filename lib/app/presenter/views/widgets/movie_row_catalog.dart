import 'package:flutter/material.dart';

import 'movie_card_catalog.dart';

class MovieRowCatalog extends StatelessWidget {
  final String firstPoster;
  final String secondPoster;
  final String firstSinopse;
  final String secondSinopse;

  const MovieRowCatalog({
    Key? key,
    required this.firstPoster,
    required this.secondPoster,
    required this.firstSinopse,
    required this.secondSinopse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MovieCardCatalog(
          sinopse: firstSinopse,
          moviePoster: firstPoster,
        ),
        MovieCardCatalog(
          sinopse: secondSinopse,
          moviePoster: secondPoster,
        ),
      ],
    );
  }
}
