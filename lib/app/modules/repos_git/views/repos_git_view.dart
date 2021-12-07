import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/routes/app_pages.dart';

import '../controllers/repos_git_controller.dart';

class ReposGitView extends GetView<ReposGitController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: controller.loadRepoFromGit,
        label: const Text('Add'),
      ),
      body: Column(
        children: [
          const Hero(
            tag: 'heroLogo',
            child: FlutterLogo(),
          ),
          Expanded(
            child: Obx(
                  () => RefreshIndicator(
                onRefresh: () async {
                  controller.repositories.clear();
                  controller.loadRepoFromGit();
                },
                child: ListView.builder(
                  itemCount: controller.repositories.length,
                  itemBuilder: (context, index) {
                    final item = controller.repositories[index];
                    return ListTile(
                      onTap: () {
                        Get.rootDelegate
                            .toNamed(Routes.REPO_DETAILS(item!.name));
                      },
                      title: Text(item!.name!),
                      subtitle: Text(item.description!),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
