import 'package:flutter/material.dart';

import 'package:cinema_app/app/utils/images.dart';

import 'widgets/movie_card_catalog.dart';
import 'widgets/movie_row_catalog.dart';

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
            children: const [
              Center(
                child: Text(
                  'Em cartaz',
                  style: TextStyle(fontSize: 50),
                ),
              ),
              SizedBox(height: 20),
              MovieRowCatalog(
                firstPoster: posterOne,
                secondPoster: posterTwo,
              ),
              SizedBox(height: 20),
              MovieRowCatalog(
                firstPoster: posterThree,
                secondPoster: posterFour,
              ),
              SizedBox(
                height: 20,
              ),
              MovieRowCatalog(
                firstPoster: posterFive,
                secondPoster: posterSix,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
