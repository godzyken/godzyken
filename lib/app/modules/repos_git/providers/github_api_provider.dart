import 'package:get/get.dart';
import 'package:godzyken/models/repo_git.dart';

import '../github_api_model.dart';

class GithubApiProvider extends GetConnect {
  static final String? _url = "api.github.com";
  static final _httpClient = GetHttpClient(
    baseUrl: _url
  );

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
    var res = await _httpClient.get('/users/godzyken/repos');
    if (res.statusCode == 200) {
      var jsonString = res.body;
      return repositoriesFromJson(jsonString);
    } else {
      return Future.error(res.statusText!);
    }
  }

}
