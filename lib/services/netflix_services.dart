import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:my_netflix/model/netflix_model.dart';
import 'package:my_netflix/utilites/netflix_url.dart';

class TrendingnowServices {
  static final http.Client _client = http.Client();

  static Future<TrendingNow?> fetchPostTranding() async {
    final url = Uri.parse(MovieUrl.baseurl);

    try {
      final response = await _client.get(url);

      if (response.statusCode == 200) {
        return trendingNowFromJson(response.body);
      }
      return null;
    } on Exception catch (_) {
      log(1);
    }
    return null;
  }
}

// popular service

class PopularServices {
  static final http.Client _client = http.Client();
  static Future<Popular?> getPostPopular() async {
    final urlpopular = Uri.parse(MovieUrl.popularUrl);
    try {
      final response = await _client.get(urlpopular);
      if (response.statusCode == 200) {
        return popularFromJson(response.body);
      }
      return null;
    } on Exception catch (_) {
      log(2);
    }
    return null;
  }
}

// Upcomming service

class UpcommingServices {
  static final http.Client _client = http.Client();
  static Future<Upcoming?> getPostUpcoming() async {
    final urlupcoming = Uri.parse(MovieUrl.upcomingUrl);
    try {
      final response = await _client.get(urlupcoming);
      if (response.statusCode == 200) {
        return upcomingFromJson(response.body);
      }
      return null;
    } on Exception catch (_) {
      log(3);
    }
    return null;
  }
}
