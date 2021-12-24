import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:godzyken/app/modules/decision_book/controllers/decision_book_controller.dart';

class DecisionAddController extends GetxController {
  final workTodo = 'todo'.obs;
  final descTodo = 'some text'.obs;
  late final int? index;

  final decisionTodo = Get.find<DecisionBookController>();
  late final TextEditingController? textEditC;
  late final TextEditingController? titleEditC;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    textEditC?.dispose();
    titleEditC?.dispose();
  }

  @override
  void onReady() {
    super.onReady();
    textEditC = TextEditingController(text: decisionTodo.todoList[index!]?.description);
    titleEditC = TextEditingController(text: decisionTodo.todoList[index!]?.title);
  }

  @override
  void onClose() {
    textEditC?.clear();
    titleEditC?.clear();
  }
  void increment() => count.value++;
}
