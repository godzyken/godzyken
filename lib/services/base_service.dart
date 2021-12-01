import 'package:get/get.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/models/demo_product.dart';

class BaseService extends GetConnect {

  @override
  void onInit() {
    var token = GetxFire.storage;
    var headers = {
      'Authorization' : "Bearer $token",
      'Access-Control-Allow-Header' : 'Content-Type, Origin, Accept, token',
      'Access-Control-Allow-Origin' : '*',
      'Access-Control-Allow-Methods' : 'GET, POST, OPTIONS',
      'vary' : 'Origin',
      'vary' : 'Access-Control-Request-Method',
      'vary' : 'Access-Control-Request-Headers',
    };


    httpClient.baseUrl = "http://www.godzyken.com";
    httpClient.defaultContentType = "application/json";
    httpClient.timeout = const Duration(seconds: 8);

    httpClient.addRequestModifier<DemoProduct?>((request) async {
      print(request.url);
      print(request.method);
      print(request.decoder);
      print(request.headers);
      return request;
    });

    httpClient.addResponseModifier<DemoProduct?>((request, response) {
      DemoProduct demoProduct = response.body!;
      if (demoProduct.user) {
        demoProduct.user;
        demoProduct.printInfo();
        print(request.url);
        print(request.method);
        print(response.body);
        print(response.status.code);
      } else {
        print(demoProduct.user);
        print(request.url);
        print(request.method);
        print(response.body);
        print(response.status.code);
      }
    });

    httpClient.addAuthenticator<DemoProduct?>((request) async {
      request.headers.addAll(headers);
      return request;
    });


    super.onInit();
  }


  /// for making socket request
  @override
  GetSocket socket(String? url, {Duration? ping = const Duration(seconds: 5)}) {
    // TODO: implement socket
    return super.socket(url!, ping: ping!);
  }
  /// for setting up GraphQl with getConnect
  @override
  Future<GraphQLResponse<T>> mutation<T>(String? mutation, {String? url, Map<String, dynamic>? variables, Map<String, String>? headers}) {
    // TODO: implement mutation
    return super.mutation(mutation!, url: url!, variables: variables, headers: headers);
  }

}