// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vibewire/core/navigation/app_router.dart' as _i3;
import 'package:vibewire/core/service/firebase_service.dart' as _i6;
import 'package:vibewire/core/utils/app_module.dart' as _i10;
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart' as _i8;
import 'package:vibewire/features/auth/cubit/auth_cubit.dart' as _i9;
import 'package:vibewire/features/auth/login/cubit/login_cubit.dart' as _i7;

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
    final appModule = _$AppModule();
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.FirebaseAuth>(() => appModule.auth);
    gh.factory<_i5.FirebaseFirestore>(() => appModule.store);
    await gh.factoryAsync<_i6.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    gh.factory<_i7.LoginCubit>(() => _i7.LoginCubit());
    gh.lazySingleton<_i8.AuthFacadeImpl>(() => _i8.AuthFacadeImpl(
          gh<_i4.FirebaseAuth>(),
          gh<_i5.FirebaseFirestore>(),
        ));
    gh.factory<_i9.AuthCubit>(() => _i9.AuthCubit(gh<_i8.AuthFacadeImpl>()));
    return this;
  }
}

class _$AppModule extends _i10.AppModule {}
