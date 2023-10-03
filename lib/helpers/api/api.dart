import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pharma_assist/helpers/local_storage/local_storage_helper.dart';

class ApiHelper {
  late final Dio _dio;
  String? _token;

  void refreshToken() async {
    _token = await LocalStorageHelper.getToken();
    _dio = Dio()
      ..options.baseUrl = "http://localhost:8000/api/"
      ..options.connectTimeout = const Duration(minutes: 1)
      ..options.headers = {
        HttpHeaders.acceptHeader: 'application/json',
        if (_token != null) HttpHeaders.authorizationHeader: 'Bearer $_token',
      };
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

  Future<T>? post<T>(String endpoint,
      {Map<String, Object>? queryParameters,
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
    return response.data as T;
  }

  Future<T>? put<T>(String endpoint,
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
    return response.data as T;
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
