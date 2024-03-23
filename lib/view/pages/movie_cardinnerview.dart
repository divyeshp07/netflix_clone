import 'package:flutter/material.dart';
import 'package:my_netflix/utilites/netflix_url.dart';

class MoviecardInnerView extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  final String relesedate;
  final String rating;
  final BuildContext context;

  const MoviecardInnerView({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.relesedate,
    required this.rating,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 496,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(MovieUrl.imageUrl + img),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 30,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 280,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(0.7),
                        Colors.black
                      ],
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 25, right: 20, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Spacer(),
                            Text('$rating⭐',
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white)),
                          ],
                        ),
                        Text(
                          relesedate,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.white),
                        ),
                        Text(
                          subtitle,
                          maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white60,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
