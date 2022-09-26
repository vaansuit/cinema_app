import 'package:cinema_app/app/utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:cinema_app/app/utils/images.dart';

import 'widgets/movie_row_catalog.dart';

class MovieCatalogPage extends StatelessWidget {
  const MovieCatalogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: const Icon(Icons.menu),
          itemBuilder: (context) => [
            const PopupMenuItem(
              child: Text('Teste'),
            ),
            const PopupMenuItem(
              child: Text('Teste'),
            ),
            const PopupMenuItem(
              child: Text('Teste'),
            ),
          ],
        ),
        title: const Center(
          child: Text('Sessão da Meia Noite'),
        ),
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
              const SizedBox(height: 20),
              MovieRowCatalog(
                firstPoster: posterOne,
                firstSinopse: sinopseText,
                secondPoster: posterTwo,
                secondSinopse: sinopseText,
              ),
              const SizedBox(height: 20),
              MovieRowCatalog(
                firstPoster: posterThree,
                firstSinopse: sinopseText,
                secondPoster: posterFour,
                secondSinopse: sinopseText,
              ),
              const SizedBox(
                height: 20,
              ),
              MovieRowCatalog(
                firstPoster: posterFive,
                firstSinopse: sinopseText,
                secondPoster: posterSix,
                secondSinopse: sinopseText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
