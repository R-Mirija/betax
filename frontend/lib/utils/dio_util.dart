import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

// api
const apiAuthority = 'https://betax-production.up.railway.app';
const apiPrefix = '/';

// http utils
final dio =
Dio(
  BaseOptions(
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 20),
    baseUrl: '$apiAuthority$apiPrefix',
    headers: {
      Headers.contentTypeHeader: 'application/json',
      'User-Agent': 'beTax/1.0',
    },
  ),
)
  ..interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        debugPrint(
          'REQUEST[${options.method}] => PATH: ${options.path} param : ${options
              .queryParameters}',
        );
        return handler.next(options);
      },
      onResponse: (response, handler) {
        debugPrint(
          'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions
              .path}',
        );
        return handler.next(response);
      },
      onError: (err, handler) {
        debugPrint(
          'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions
              .path}',
        );
        return handler.next(err);
      },
    ),
  );
