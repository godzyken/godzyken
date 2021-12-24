import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:godzyken/app/modules/decision_add/views/decision_add_view.dart';

import '../controllers/decision_book_controller.dart';

class DecisionBookView extends GetView<DecisionBookController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decisions Book View'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          controller.addDecision;
          Get.toNamed(controller.todo.value.id);
        },
        label: const Icon(
          Icons.add
        ),
      ),
      body: Obx(
          () => RefreshIndicator(
              child: ListView.builder(
                  itemCount: controller.todoList.length,
                  itemBuilder: (context, index) =>
                      Dismissible(
                          key: UniqueKey(),
                          background: Container(
                            color: Colors.deepOrange,
                            child: const Icon(
                              Icons.delete,
                              color: Colors.white,
                            ),
                          ),
                          onDismissed: (_) {
                            controller.todoList.removeAt(index);
                            Get.snackbar('Remove!', "Task was successfully delete", snackPosition: SnackPosition.BOTTOM);
                          },
                          child: ListTile(
                            title: Text(
                              controller.todoList[index]?.title,
                              style: controller.todoList[index]?.done
                                  ? const TextStyle(
                                color: Colors.red,
                                decoration: TextDecoration.lineThrough,
                              )
                                  : const TextStyle(
                                  color: Colors.black
                              ),
                            ),
                            trailing: IconButton(
                              onPressed: () => Get.to(() => DecisionAddView()),
                              icon: const Icon(Icons.edit),
                            ),
                            leading: Checkbox(
                              value: controller.todoList[index]?.done,
                              onChanged: (newValue) {
                                var todo = controller.todoList[index];
                                todo?.done = newValue!;
                                controller.todoList[index] = todo;
                              },
                            ),
                          )
                      )
              ),
              onRefresh: () async {
                controller.todoList.clear();
                controller.addDecision();
              }
          )
      ),
    );
  }
}
