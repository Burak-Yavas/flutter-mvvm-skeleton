import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:mvvm_skeleton/core/base/model/base_error.dart';
import 'package:mvvm_skeleton/core/base/model/base_model.dart';
import 'package:mvvm_skeleton/core/constants/enums/http_request_enums.dart';
import 'package:mvvm_skeleton/core/extension/network_extensions.dart';

import 'core_dio_interface.dart';
import 'response_model_interface.dart';

part './core_operations.dart';

class CoreDio with DioMixin implements Dio, ICoreDio {
  @override
  // ignore: overridden_fields
  final BaseOptions options;

  CoreDio(this.options) {
    options = options;
    interceptors.add(InterceptorsWrapper());
    httpClientAdapter = DefaultHttpClientAdapter();
  }

  @override
  Future<IResponseModel<R>> send<R, T extends BaseModel>(String path,
      {required HttpTypes type,
      required T parseModel,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      void Function(int, int)? onReceiveProgress}) async {
    final response = await request(path,
        data: data, options: Options(method: type.rawValue));
    switch (response.statusCode) {
      case HttpStatus.ok:
      case HttpStatus.accepted:
        final model = _responseParser<R, T>(parseModel, response.data);
        return ResponseModel<R>(data: model);
      default:
        return ResponseModel(error: BaseError('message'));
    }
  }
}
