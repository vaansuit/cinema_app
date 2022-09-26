import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/presenter/views/movie_catalog/movie_catalog_page.dart';

void main() => runApp(
      const ProviderScope(child: Main()),
    );

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieCatalogPage(),
    );
  }
}
