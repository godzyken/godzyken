// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/app/modules/home/controllers/home_controller.dart';
import 'package:godzyken/app/modules/home/domain/adapter/adapter.dart';
import 'package:godzyken/app/modules/home/domain/entity/user_model.dart';
import 'package:matcher/matcher.dart' as m;


class MockRepository implements IHomeRepository {
  @override
  Future<UserModel> getUsers() async {
    await Future.delayed(Duration(milliseconds: 100));

    if (Random().nextBool()) {
      return UserModel(
        id: 0,
        name: '',
        login: '',
      );
    }

    return Future<UserModel>.error('error');
  }

  @override
  Future<UserModel?> getUser(String? id) async {
    await Future.delayed(Duration(milliseconds: 100));

    if (Random().nextBool()) {
      return UserModel(
        id: int.tryParse(id!),
        name: '',
        login: '',
      );
    }

    return Future<UserModel>.error('error');
  }

  @override
  Future<List<UserModel>> getUserModels() async {
    await Future.delayed(Duration(milliseconds: 100));
    var list = <UserModel>[].obs;
    for (var e in list) {
      if (e.id != null) {
        return UserModel.listFromJson(e);
      }
      return list;
    }
    return UserModel.listFromJson(list);
  }
}

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  setUpAll(() => HttpOverrides.global = null);
  final binding = BindingsBuilder(() {
    Get.lazyPut<IHomeRepository>(() => MockRepository());
    Get.lazyPut<HomeController>(
            () => HomeController(homeRepository: Get.find()));
  });

  test('Test Binding', () {
    expect(Get.isPrepared<HomeController>(), false);
    expect(Get.isPrepared<IHomeRepository>(), false);

    /// test you Binding class with BindingsBuilder
    binding.builder();

    expect(Get.isPrepared<HomeController>(), true);
    expect(Get.isPrepared<IHomeRepository>(), true);

    Get.reset();
  });

  test('Test Controller', () async {
    /// Controller can't be on memory
    expect(() => Get.find<HomeController>(), throwsA(const m.TypeMatcher<String>()));

    /// build Binding
    binding.builder();

    /// recover your controller
    final controller = Get.find<HomeController>();

    /// check if onInit was called
    expect(controller.initialized, true);

    /// check initial Status
    expect(controller.status.isLoading, true);

    /// await time request
    await Future.delayed(const Duration(milliseconds: 100));

    if (controller.status.isError) {
      expect(controller.state, null);
    }

    if (controller.status.isSuccess) {
      expect(controller.state!.id, 1);
      expect(controller.state!.login!.isNotEmpty, 1);
    }
  });

  test('ever', () async {
    final count = ''.obs;
    var result = '';
    ever<String>(count, (value) {
      result = value;
    });
    count.value = '1';
    expect('1', result);
  });

  /// Tests with GetTests
  /// TEMPORARILY REMOVED from the null-safetym branch as
  /// get_test is not yet null safety.
  /* getTest(
    "test description",
    getPages: AppPages.routes,
    initialRoute: AppPages.INITIAL,
    widgetTest: (tester) async {
      expect('/home', Get.currentRoute);
      Get.toNamed('/home/country');
      expect('/home/country', Get.currentRoute);
      Get.toNamed('/home/country/details');
      expect('/home/country/details', Get.currentRoute);
      Get.back();
      expect('/home/country', Get.currentRoute);
    },
  );
  testGetX(
    'GetX test',
    widget: GetX<Controller>(
      init: Controller(),
      builder: (controller) {
        return Text("ban:${controller.count}");
      },
    ),
    test: (e) {
      expect(find.text("ban:0"), findsOneWidget);
    },
  );
  testController<Controller>(
    'Controller test',
    (controller) {
      print('controllllllll ${controller.count}');
    },
    controller: Controller(),
    onInit: (c) {
      c.increment();
      print('onInit');
    },
    onReady: (c) {
      print('onReady');
      c.increment();
    },
    onClose: (c) {
      print('onClose');
    },
  );*/
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {

    // Build our app and trigger a frame.
    await tester.pumpWidget(const GetMaterialApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

class TestController extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;

  @override
  void onInit() {
    print('inittt');
    super.onInit();
  }

  @override
  void onReady() {
    print('onReady');
    super.onReady();
  }

  void onClose() {
    print('onClose');
  }
}