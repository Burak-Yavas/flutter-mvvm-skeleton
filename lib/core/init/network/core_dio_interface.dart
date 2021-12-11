import 'package:mvvm_skeleton/core/constants/enums/http_request_enums.dart';

import '../../base/model/base_model.dart';
import 'response_model_interface.dart';

// abstract class ICoreDio {
//   Future<IResponseModel<R>> fetch<R, T extends BaseModel>(String path,
//       {required HttpTypes type,
//       required T parseModel,
//       dynamic data,
//       Map<String, Object>? queryParameters,
//       void Function(int, int)? onReceiveProgress});
// }
// MARK: Null SAfety

abstract class ICoreDio {
  Future<IResponseModel<R>> send<R, T extends BaseModel>(String path,
      {required HttpTypes type,
      required T parseModel,
      dynamic data,
      Map<String, Object>? queryParameters,
      void Function(int, int)? onReceiveProgress});
}
