// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:puzzle/core/injection/register_module.dart' as _i6;
import 'package:puzzle/core/network/interceptor.dart' as _i4;
import 'package:puzzle/features/data/data_source/remote/api/product_api.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.lazySingletonAsync<_i3.Dio>(
      () => registerModule.dio,
      preResolve: true,
    );
    gh.lazySingleton<_i3.Interceptor>(() => _i4.AppInterceptors());
    gh.lazySingleton<_i5.ProductApi>(() => _i5.ProductApi(gh<_i3.Dio>()));
    return this;
  }
}

class _$RegisterModule extends _i6.RegisterModule {}
