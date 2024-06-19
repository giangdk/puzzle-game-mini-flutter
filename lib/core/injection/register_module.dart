import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:puzzle/core/network/interceptor.dart';

@module
abstract class RegisterModule {
  @preResolve
  @lazySingleton
  Future<Dio> get dio async {
    final dio = Dio()..options = BaseOptions(baseUrl: "http://192.168.41.102:3000", queryParameters: {});
    dio.interceptors.addAll([
      AppInterceptors(),
      PrettyDioLogger(
        requestHeader: false,
        responseHeader: false,
        requestBody: true,
        responseBody: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    ]);
    return dio;
  }
}
