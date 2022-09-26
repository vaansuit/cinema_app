import 'package:flutter/material.dart';

class MovieCardCatalog extends StatelessWidget {
  final String moviePoster;
  final String sinopse;

  const MovieCardCatalog({
    Key? key,
    required this.moviePoster,
    required this.sinopse,
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.0),
            ),
            color: const Color.fromARGB(230, 255, 255, 255),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                            child: Text(
                              sinopse,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 160,
                                  height: 50,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    color: Colors.green,
                                    onPressed: () {},
                                    child: const Text(
                                      'Comprar ingressos',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 160,
                                  height: 50,
                                  child: MaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    color: Colors.green,
                                    onPressed: () {},
                                    child: const Text(
                                      'Trailer',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  });
            },
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
