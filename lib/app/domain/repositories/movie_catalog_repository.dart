import 'package:cinema_app/app/domain/entities/movie_catalog_entity.dart';
import 'package:cinema_app/app/utils/images.dart';
import 'package:cinema_app/app/utils/texts.dart';

class MovieCatalogRepository {
  List<MovieCatalogEntity> getAllCatalogMovies() {
    List<MovieCatalogEntity> movieCatalogList = [
      MovieCatalogEntity(
        movieId: 1,
        movieName: 'Evil Dead',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
      MovieCatalogEntity(
        movieId: 2,
        movieName: 'The Exorcist',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
      MovieCatalogEntity(
        movieId: 3,
        movieName: 'Halloween',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
      MovieCatalogEntity(
        movieId: 4,
        movieName: 'Texas Chainsaw Massacre',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
      MovieCatalogEntity(
        movieId: 5,
        movieName: 'Nightmare on Elm Street',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
      MovieCatalogEntity(
        movieId: 6,
        movieName: 'Tremors',
        posterMovie: posterOne,
        sinopseMovie: sinopseText,
        trailerMovie: '',
      ),
    ];

    return movieCatalogList;
  }
}
