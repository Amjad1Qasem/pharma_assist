import 'dart:io';
import 'package:dio/dio.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';
import 'package:pharma_assist/utilities/log.dart';

class ApiHelper {
  late final Dio _dio;
  String? _token;

  void refreshToken() async {
    _token = await LocalStorageHelper.getToken();
    _dio = Dio()
      ..options.baseUrl = "http://localhost:8000/api/v1/"
      ..options.connectTimeout = const Duration(minutes: 1)
      ..options.headers = {
        HttpHeaders.acceptHeader: 'application/json',
        if (_token != null) "Authorization": 'Bearer $_token',
      };
    debugPrint('headers = ${_dio.options.headers}');
  }

  ApiHelper() {
    refreshToken();
  }

  Future<T?> get<T>(String endpoint,
      {Map<String, Object>? queryParameters,
      void Function(int statusCode)? onSuccess,
      void Function(int statusCode)? onFialed}) async {
    final response = await _dio.get(endpoint, queryParameters: queryParameters);
    final statusCode = response.statusCode;
    if (statusCode != null && statusCode < 300 && statusCode >= 200) {
      onSuccess?.call(statusCode);
    } else {
      onFialed?.call(statusCode!);
    }

    return response.data as T;
  }

  Future<Map<String, dynamic>?> post(String endpoint,
      {Map<String, Object>? queryParameters,
      required Map<String, Object> body,
      void Function(int statusCode, Map<String, dynamic> response)? onSuccess,
      void Function(int statusCode, Map<String, dynamic> response)?
          onFailed}) async {
    try {
      final response = await _dio.post(endpoint,
          queryParameters: queryParameters, data: body);
      final statusCode = response.statusCode;
      if (statusCode != null && statusCode < 300 && statusCode >= 200) {
        onSuccess?.call(statusCode, response.data);
      } else {
        onFailed?.call(statusCode!, response.data);
      }
      return response.data.toString().isEmpty ? null : response.data;
    } on DioException catch (e) {
      debugPrint(e.message);
      debugPrint(e.response?.data);
      debugPrint(e.response?.statusCode);
      throw Exception(e.message);
    } catch (e) {
      debugPrint(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<Map<String, dynamic>>? put(String endpoint,
      {required int id,
      Map<String, Object>? queryParameters,
      required Map<String, Object> body,
      void Function(int statusCode)? onSuccess,
      void Function(int statusCode)? onFialed}) async {
    final response =
        await _dio.post(endpoint, queryParameters: queryParameters, data: body);
    final statusCode = response.statusCode;
    if (statusCode != null && statusCode < 300 && statusCode >= 200) {
      onSuccess?.call(statusCode);
    } else {
      onFialed?.call(statusCode!);
    }
    return response.data;
  }

  void delete(String endpoint,
      {required int id,
      Map<String, Object>? queryParameters,
      void Function(int statusCode)? onSuccess,
      void Function(int statusCode)? onFialed}) async {
    final response =
        await _dio.delete(endpoint, queryParameters: queryParameters);
    final statusCode = response.statusCode;
    if (statusCode != null && statusCode < 300 && statusCode >= 200) {
      onSuccess?.call(statusCode);
    } else {
      onFialed?.call(statusCode!);
    }
  }
}
