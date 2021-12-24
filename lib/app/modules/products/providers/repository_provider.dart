import 'package:get/get.dart';

import '../repository_model.dart';

class RepositoryProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Repository.fromJson(map);
      if (map is List) {
        return map.map((item) => Repository.fromJson(item)).toList();
      }
    };
    httpClient.baseUrl = 'api.github.com';
  }

  Future<Repository?> getRepository(int id) async {
    final response = await get('repository/$id');
    return response.body;
  }

  Future<Response<Repository>> postRepository(Repository repository) async =>
      await post('repository', repository);
  Future<Response> deleteRepository(int id) async =>
      await delete('repository/$id');

  Future<List<Repository?>> fetchRepository() async {
    var response = await get('https://api.github.com/users/godzyken/repos');

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      if (response.statusCode == 200) {
        var jsonString = response.bodyString;
        return demoRepoFromJson(jsonString);
      }
      return response.body;
    }
  }
}
