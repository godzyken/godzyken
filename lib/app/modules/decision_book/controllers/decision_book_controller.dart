import 'dart:io';

import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/models/decision_book.dart';

class DecisionBookController extends GetxController {
  final todoList = <DecisionTodo?>[].obs;
  final todo = DecisionTodo().obs;
  final storage = GetxFire.storage;

  final count = 0.obs;

  String get fileName => todoList.single!.rx.project.value.single!.nameProject;

  final imageToUploads = <File?>[].obs;

  File? get imageToUpload => File(todoList.single!.rx.project.value.single!.rx.source.single!.gitUrl);

  @override
  void onInit() {
    super.onInit();
    ever(todoList, (_) {
      storage.uploadFile(
        imageToUpload: imageToUpload,
        title: '${todoList.single!.title}',
        fileType: 'fileType',
        folder: '${todoList.single!.title}',
      );
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void increment() => count.value++;

}
