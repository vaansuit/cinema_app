import 'package:flutter/material.dart';

class MovieCardCatalog extends StatelessWidget {
  final String moviePoster;

  const MovieCardCatalog({
    required this.moviePoster,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(moviePoster),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          left: 40,
          bottom: 1,
          child: MaterialButton(
            color: const Color.fromARGB(230, 255, 255, 255),
            onPressed: () {},
            child: (const Text(
              'Sinopse',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            )),
          ),
        ),
      ],
    );
  }
}
