/*
Helply by Alexander Abraham,
a.k.a. The Black Unicorn,
a.k.a. Angeldust Duke.
Licensed under the MIT license.
*/

import 'vars.dart';
import 'package:dio/dio.dart';

/// Gets JSON from [apiUrl] and returns a future for said data.
class APIStorage {
  Future<Map<String, dynamic>> getData() async {
    try {
      Response response = await dio.get(
        apiUrl,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status! < 500; }
        ),
      );
      return response.data;
    } catch (e) {
      Response response = await dio.get(
        apiUrl,
        options: Options(
          responseType: ResponseType.json,
          followRedirects: true,
          validateStatus: (status) { return status! < 500; }
        ),
      );
      return response.data;
    }
  }
  Future<Map<String, dynamic>> readData() async {
    Future<Map<String, dynamic>> data = getData();
    return data;
  }
}
