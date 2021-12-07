import 'dart:io';

import 'dart:convert' show json, utf8;

import 'package:date_format/date_format.dart';
import 'package:get/get.dart';
import 'package:godzyken/models/repo_git.dart';

import '../github_api_model.dart';

class GithubApiProvider extends GetConnect {
  static final GetHttpClient _httpClient = GetHttpClient();
  static final String? _url = "api.github.com";


  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return GithubApi.fromJson(map);
      if (map is List) {
        return map.map((item) => GithubApi.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'api.github.com';
  }

  Future<GithubApi?> getGithubApi(int id) async {
    final response = await get('githubapi/$id');
    return response.body;
  }

  Future<Response<GithubApi?>> postGithubApi(GithubApi? githubapi) async =>
      await post('githubapi', githubapi);

  Future<Response> deleteGithubApi(int id) async =>
      await delete('githubapi/$id');

  static Future<List<Repo?>> fetchRepo() async {
    final lastWeek = DateTime.now().subtract(Duration(days: 7));
    final formattedDate = formatDate(lastWeek, [yyyy, '-', mm, '-', dd]);

    final uri = Uri.https(_url!, 'search/repositories', {
      'q': 'created:>$formattedDate',
      'sort': 'stars',
      'order': 'desc',
      'page': '0',
      'per_page': '25'
    });

    final jsonResponse = await _getJson(uri);
    if (jsonResponse == null) {
      return null!;
    }
    if (jsonResponse['errors'] != null) {
      return null!;
    }
    if (jsonResponse['items'] == null) {
      return []..length;
    }

    return Repo.mapJSONStringToList(jsonResponse['items']);
  }

  static Future<Map<String, dynamic>> _getJson(Uri? uri) async {
    try {
      final httpRequest = await _httpClient.get(uri!.path);
      final httpResponse = await httpRequest.body;
      if (httpResponse.statusCode != HttpStatus.ok) {
        return null!;
      }

      final responseBody = await httpResponse.transform(utf8.decoder).join();
      return json.decode(responseBody);
    } on Exception catch (e) {
      print('$e');
      return null!;
    }
  }

}
