import 'package:get/get.dart';
import 'package:godzyken/app/modules/repos_git/providers/github_api_provider.dart';
import 'package:godzyken/models/repo_git.dart';

class ReposGitController extends GetxController {
  final repositories = <Repo?>[].obs;
  final repo = Repo().obs;

  final count = 0.obs;

  void loadRepoFromGit() {
    repositories.add(
      Repo(
        htmlUrl: repo.value.htmlUrl,
        name: repo.value.name,
        description: repo.value.description,
        language: repo.value.language,
        watchersCount: repo.value.watchersCount,
        owner: repo.value.owner,
      ),
    );
  }

  void fetchRepo() async {
    var demos = await GithubApiProvider.fetchRepo();
    if (demos != null) {
      repositories.value = demos;

      repositories.addIf(
          demos,
          Repo(
            htmlUrl: demos.single!.htmlUrl,
            name: demos.single!.name,
            description: demos.single!.description,
            watchersCount: demos.single!.watchersCount,
            language: demos.single!.language,
            owner: demos.single!.owner,
          ));
    }
  }

  @override
  void onInit() {
    super.onInit();

    Get.log('Repositories controller initialized');
  }

  @override
  void onReady() {
    super.onReady();
    loadRepoFromGit();
    fetchRepo();
  }

  @override
  void onClose() {
    Get.printInfo(info: 'Repos: onClose');
    super.onClose();
  }

  void increment() => count.value++;
}
