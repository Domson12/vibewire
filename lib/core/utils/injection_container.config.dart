// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vibewire/core/service/firebase_service.dart' as _i5;
import 'package:vibewire/core/utils/app_module.dart' as _i10;
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart' as _i8;
import 'package:vibewire/features/auth/cubit/auth_cubit.dart' as _i9;
import 'package:vibewire/features/initial/cubit/initial_cubit.dart' as _i7;

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
    gh.lazySingleton<_i3.FirebaseAuth>(() => appModule.auth);
    gh.lazySingleton<_i4.FirebaseFirestore>(() => appModule.store);
    await gh.factoryAsync<_i5.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    gh.lazySingleton<_i6.GoogleSignIn>(() => appModule.googleSignIn);
    gh.factory<_i7.InitialCubit>(() => _i7.InitialCubit());
    gh.lazySingleton<_i8.AuthFacadeImpl>(() => _i8.AuthFacadeImpl(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.FirebaseFirestore>(),
        ));
    gh.factory<_i9.AuthCubit>(() => _i9.AuthCubit(gh<_i8.AuthFacadeImpl>()));
    return this;
  }
}

class _$AppModule extends _i10.AppModule {}
