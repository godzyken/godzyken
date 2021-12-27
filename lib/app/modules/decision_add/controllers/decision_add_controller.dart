import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:godzyken/app/modules/decision_book/controllers/decision_book_controller.dart';
import 'package:godzyken/models/decision_book.dart';

class DecisionAddController extends GetxController {
  final todoList = <DecisionTodo>[].obs;
  final todo = DecisionTodo().obs;
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
    Get.log('add decision working');
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

  void addDecision() {
    todoList.add(
      DecisionTodo(
          id: DateTime.now().millisecondsSinceEpoch.toString(),
          title: todo.value.title,
          description: descTodo.value,
          reasons: todo.value.reasons,
          havePartenariat: todo.value.havePartenariat,
          dateTodo: todo.value.dateTodo,
          duration: todo.value.duration,
          done: todo.value.done,
          canceled: todo.value.canceled
      ),
    );
  }

}
