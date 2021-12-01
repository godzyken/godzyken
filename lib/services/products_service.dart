import 'package:get/get.dart';
import 'package:get/get_connect/http/src/exceptions/exceptions.dart';
import 'package:getxfire/getxfire.dart';
import 'package:godzyken/models/demo_product.dart';
import 'package:godzyken/services/base_service.dart';

class ProductsService extends BaseService {
  static Future<List<DemoProduct?>> fetchProducts() async {
    var client = GetHttpClient(
      userAgent: 'getx-client',
      timeout: const Duration(seconds: 8),
      withCredentials: true,
      sendUserAgent: false,
      followRedirects: true,
    );

    var response = await client.get('http://www.godzyken.com', headers: {
      "Accept": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
    });

    if (client.errorSafety) {
      try {
        if (response.status.hasError) {
          return Future.error(response.statusText!);
        } else {
          if (response.statusCode == 200) {
            var jsonString = response.body;
            return demoProductFromJson(jsonString);
          }
          return response.body['results'];
        }
      } on GetHttpException catch (code, msg) {
        if (response.statusCode == 401) {
          throw GetHttpException(code.message);
        }
        if (response.statusCode == 404) {
          throw GetHttpException(code.message);
        }
        if (response.statusCode == 500) {
          throw GetHttpException(code.message);
        }

        print('Error message : $msg');

        return Future.value();
      }
    } else {
      return null!;
    }
  }

  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?results=10");

    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body['results'];
    }
  }

  /// for get requests.
  Future<DemoProduct?> getProductData() async {
    var res;
    print(res);
    try {
      res = await get("product_url");
      return DemoProduct.fromJson(res.body);
    } catch (e) {
      errorHandler(res);
    }
  }
  /// for post requests.
  Future<DemoProduct?> postProductData(dynamic body) async {
    var res;
    print(res);
    try {
      res = await post("product_url", body);
      return DemoProduct.fromJson(res.body);
    } catch (e) {
      errorHandler(res);
    }
  }
  /// for put requests.
  Future<DemoProduct?> putProductData(dynamic body) async {
    var res;
    print(res);
    try {
      res = await put("product_url", body);
      return DemoProduct.fromJson(res.body);
    } catch (e) {
      errorHandler(res);
    }
  }
  /// for delete requests.
  Future<DemoProduct?> deleteProductData() async {
    var res;
    print(res);
    try {
      res = await delete("product_url");
      return DemoProduct.fromJson(res.body);
    } catch (e) {
      errorHandler(res);
    }
  }

  dynamic errorHandler(Response response) {
    print(response.toString());
    switch (response.statusCode) {
      case 200:
      case 201:
      case 202:
        var responseJson = response.body.toString();
        return responseJson;
      case 500:
        throw "Server Error please retry later";
      case 403:
        throw "Error occurred please check internet and retry.";
      default:
        throw "Error occurred retry";

    }
  }

}
