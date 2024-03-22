import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_netflix/controller/netflix_providers.dart';
import 'package:my_netflix/utilites/netflix_url.dart';
import 'package:my_netflix/view/pages/movie_cardinnerview.dart';

class MovieCard extends ConsumerWidget {
  const MovieCard({
    Key? key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(PopularProvider).when(
          data: (data) {
            if (data == null) {
              return const Center(
                child: Text('something wrangg'),
              );
            }
            return SizedBox(
              height: 200,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemCount: 12,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MoviecardInnerView(
                          img: data.results[index].posterPath,
                          title: data.results[index].title,
                          subtitle: data.results[index].overview,
                          relesedate:
                              data.results[index].releaseDate.toString(),
                          rating: data.results[index].voteAverage.toString(),
                          context: context),
                    ),
                  ),
                  child: Container(
                    width: 140,
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            MovieUrl.imageUrl + data.results[index].posterPath),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(13),
                          child: Text(
                            data.results[index].title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
          error: (error, stackTrace) => const Center(
            child: Text('Error'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
  }
}
