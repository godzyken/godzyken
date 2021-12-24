import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/decision_add_controller.dart';

class DecisionAddView extends GetView<DecisionAddController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              child: TextFormField(
                initialValue: controller.workTodo.value,
                textAlign: TextAlign.center,
                onChanged: (value) => controller.workTodo.value,
                autofocus: true,
                decoration: const InputDecoration(
                    hintText: 'What do we want to accomplish ?',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
                style: const TextStyle(fontSize: 25.0),
                keyboardType: TextInputType.multiline,
                maxLines: 20,
                controller: controller.titleEditC,
              ),
            ),
            const Divider(),
            Expanded(
              child: TextFormField(
                initialValue: controller.descTodo.value,
                textAlign: TextAlign.center,
                onChanged: (value) => controller.descTodo.value,
                autofocus: true,
                decoration: const InputDecoration(
                    hintText: 'Description !',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none),
                style: const TextStyle(fontSize: 25.0),
                keyboardType: TextInputType.multiline,
                maxLines: 20,
                controller: controller.textEditC,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    var editing = controller.decisionTodo.todoList[controller.index!];
                    editing?.description = controller.textEditC!.text;
                    controller.decisionTodo.todoList[controller.index!] = editing;
                    Get.back();
                  },
                  child: const Text('Update'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
