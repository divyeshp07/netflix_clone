// // import 'dart:math';

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:state_managment/revie_api_q1/movie_provider.dart';
// import 'package:state_managment/revie_api_q1/view/favoratemovies.dart';
// import 'package:state_managment/revie_api_q1/view/moviecardinnerview.dart';
// import 'package:state_managment/revie_api_q1/view/popumogridlist.dart';
// import 'package:state_managment/revie_api_q1/view/upcomogridlist.dart';
// // import 'package:state_managment/revie_api_q1/movie_provider.dart';

// class MovieApp extends ConsumerWidget {
//   const MovieApp({Key? key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.arrow_back_ios_new),
//         ),
//         centerTitle: true,
//         title: Image.network(
//           'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
//           fit: BoxFit.cover,
//           height: 50,
//           width: 150,
//           filterQuality: FilterQuality.high,
//         ),
//       ),
//       body: ref.watch(trendingnowProvider).when(
//             data: (data) {
//               if (data == null) {
//                 return const Center(
//                   child: Text("Something went wrong"),
//                 );
//               }
//               return
//       SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SingleChildScrollView(
//               physics: const BouncingScrollPhysics(),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 25),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 15),
//                     child: Text(
//                       'Trending Movies',
//                       style: TextStyle(fontSize: 22),
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   SizedBox(
//                     width: double.infinity,
//                     child: CarouselSlider.builder(
//                       itemCount: 12,
//                       // itemCount: data.results.length,
//                       options: CarouselOptions(
//                         height: 280,
//                         autoPlay: true,
//                         viewportFraction: 0.55,
//                         autoPlayAnimationDuration: const Duration(seconds: 1),
//                         enlargeCenterPage: true,
//                         pageSnapping: true,
//                         autoPlayCurve: Curves.fastOutSlowIn,
//                       ),
//                       itemBuilder: (context, index, realIndex) {
//                         return GestureDetector(
//                           onTap: () => Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) =>
//                                       const MoviecardInnerView())),
//                           child: Container(
//                             width: 200,
//                             height: 300,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(22),
//                               color: Colors.amber,
//                             ),
//                             child: const Padding(
//                               padding: EdgeInsets.all(15),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     // data.results[index].title.toString(),
//                                     'title',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 23,
//                                     ),
//                                   ),
//                                   Row(
//                                     children: [
//                                       Text(
//                                         // data.results[index].voteAverage
//                                         //     .toString(),
//                                         'ratting',
//                                         style: TextStyle(
//                                           fontSize: 20,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       Icon(
//                                         Icons.star,
//                                         color: Colors.black,
//                                         size: 20,
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ],
//               )

//               },
//               error: (error, stackTrace) {
//                 log(4);
//                 return const Center(
//                   child: Text('Something went wrong'),
//                 );
//               },
//               loading: () => const Center(
//                 child: CircularProgressIndicator(),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, right: 15, top: 20, bottom: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Popular Movies',
//                     style: TextStyle(fontSize: 22),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const PopuMoGridlist(),
//                           ));
//                     },
//                     child: const Text(
//                       'View All',
//                       style: TextStyle(fontSize: 17),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const MovieCard(),
//             Padding(
//               padding: const EdgeInsets.only(
//                   left: 15, right: 15, top: 20, bottom: 15),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text(
//                     'Upcoming Movies',
//                     style: TextStyle(fontSize: 22),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => const UpcomMoGridlist(),
//                           ));
//                     },
//                     child: const Text(
//                       'View All',
//                       style: TextStyle(fontSize: 17),
//                     ),
//                   )
//                 ],
//               ),
//             ),

//             const MovieCard(),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 15),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(50),
//           child: SizedBox(
//             height: 60,
//             child: BottomNavigationBar(
//               showSelectedLabels: true,
//               items: [
//                 BottomNavigationBarItem(
//                   label: 'Home',
//                   icon: GestureDetector(
//                     onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const MovieApp(),
//                         )),
//                     child: const Icon(
//                       Icons.home_outlined,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const BottomNavigationBarItem(
//                   label: 'Explore',
//                   icon: Icon(
//                     Icons.explore_outlined,
//                     color: Colors.white,
//                   ),
//                 ),
//                 BottomNavigationBarItem(
//                   label: 'Favorites',
//                   icon: GestureDetector(
//                     onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const FavorateMovielist(),
//                         )),
//                     child: const Icon(
//                       Icons.favorite_outline,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//                 const BottomNavigationBarItem(
//                   label: 'Profile',
//                   icon: Icon(
//                     Icons.person_outline,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       extendBody: true,
//     );
//   }
// }

// class MovieCard extends StatelessWidget {
//   const MovieCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: ListView.separated(
//         scrollDirection: Axis.horizontal,
//         separatorBuilder: (context, index) => const SizedBox(width: 20),
//         itemCount: 12,
//         itemBuilder: (context, index) => GestureDetector(
//           onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => const MoviecardInnerView())),
//           child: Container(
//             width: 140,
//             height: 170,
//             decoration: BoxDecoration(
//                 color: Colors.amber, borderRadius: BorderRadius.circular(12)),
//             child: const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.all(13),
//                   child: Text(
//                     'data',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 17,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'dart:developer';
import 'dart:io';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_netflix/controller/netflix_providers.dart';
import 'package:my_netflix/services/netflix_services.dart';
import 'package:my_netflix/utilites/netflix_url.dart';
import 'package:my_netflix/view/pages/fav_listview.dart';
import 'package:my_netflix/view/pages/movie_cardinnerview.dart';
import 'package:my_netflix/view/pages/popular_movies_list.dart';
import 'package:my_netflix/view/pages/upcoming_movie_list.dart';
import 'package:my_netflix/view/widgets/movie_card_widget.dart';

class MovieApp extends ConsumerWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            exit(0);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        centerTitle: true,
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/7/7a/Logonetflix.png',
          fit: BoxFit.cover,
          height: 50,
          width: 150,
          filterQuality: FilterQuality.high,
        ),
      ),
      body: ref.watch(trendingnowProvider).when(
            data: (data) {
              if (data == null) {
                return const Center(
                  child: Text("Something went wrong"),
                );
              }
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Trending Movies',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: CarouselSlider.builder(
                        itemCount: data.results.length,
                        options: CarouselOptions(
                          height: 280,
                          autoPlay: true,
                          viewportFraction: 0.55,
                          autoPlayAnimationDuration: const Duration(seconds: 1),
                          enlargeCenterPage: true,
                          pageSnapping: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                        ),
                        itemBuilder: (context, index, realIndex) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MoviecardInnerView(
                                        context: context,
                                        img: data.results[index].backdropPath
                                            .toString(),
                                        title: data.results[index].title,
                                        subtitle: data.results[index].overview,
                                        relesedate: data
                                            .results[index].releaseDate
                                            .toString(),
                                        rating: data.results[index].voteAverage
                                            .toString()))),
                            child: Container(
                              width: 200,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  image: DecorationImage(
                                      image: NetworkImage(MovieUrl.imageUrl +
                                          data.results[index].backdropPath
                                              .toString()),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data.results[index].title,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          ' ${data.results[index].voteAverage.toString()}⭐',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Popular Movies',
                            style: TextStyle(fontSize: 22),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const PopuMoGridlist(),
                                  ));
                            },
                            child: const Text(
                              'View All',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    const MovieCard(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Upcoming Movies',
                            style: TextStyle(fontSize: 22),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const UpcomMoGridlist(),
                                  ));
                            },
                            child: const Text(
                              'View All',
                              style: TextStyle(fontSize: 17),
                            ),
                          )
                        ],
                      ),
                    ),
                    const MovieCard(),
                  ],
                ),
              );
            },
            error: (error, stackTrace) {
              log('error');
              return Center(
                child: Column(
                  children: [
                    const Text('Something went wrong,try again'),
                    IconButton(
                        onPressed: () {
                          UpcommingServices.getPostUpcoming();
                          PopularServices.getPostPopular();
                          TrendingnowServices.fetchPostTranding();
                        },
                        icon: const Icon(Icons.refresh))
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44, vertical: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: SizedBox(
            height: 60,
            child: BottomNavigationBar(
              showSelectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MovieApp(),
                        )),
                    child: const Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
                const BottomNavigationBarItem(
                  label: 'Explore',
                  icon: Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Favorites',
                  icon: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavorateMovielist(),
                        )),
                    child: const Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                    ),
                  ),
                ),
                const BottomNavigationBarItem(
                  label: 'Profile',
                  icon: Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
    );
  }
}
