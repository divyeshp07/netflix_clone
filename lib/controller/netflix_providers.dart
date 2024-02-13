// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:state_managment/revie_api_q1/movie.service.dart';
// import 'package:state_managment/revie_api_q1/movie_model.dart';

// final trendingnowProvider = FutureProvider<TrendingNow?>((ref) async {
//   return TrendingnowServices.fetchPost();
// });

// trending
import 'package:my_netflix/model/netflix_model.dart';
import 'package:my_netflix/services/netflix_services.dart';
import 'package:riverpod/riverpod.dart';

final trendingnowProvider = FutureProvider<TrendingNow?>(
    (ref) async => TrendingnowServices.fetchPostTranding());

// popular
final PopularProvider = FutureProvider<Popular?>((ref) async {
  return PopularServices.getPostPopular();
});

// upcoming
final upcomingProvider = FutureProvider<Upcoming?>((ref) async {
  return UpcommingServices.getPostUpcoming();
});
