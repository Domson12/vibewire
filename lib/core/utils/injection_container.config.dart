// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vibewire/core/navigation/app_router.dart' as _i3;
import 'package:vibewire/core/service/firebase_service.dart' as _i7;
import 'package:vibewire/core/utils/app_module.dart' as _i11;
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart' as _i9;
import 'package:vibewire/features/cubit/auth/auth_cubit.dart' as _i10;

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
    gh.lazySingleton<_i4.FacebookAuth>(() => appModule.facebookAuth);
    gh.lazySingleton<_i5.FirebaseAuth>(() => appModule.auth);
    gh.lazySingleton<_i6.FirebaseFirestore>(() => appModule.firestore);
    await gh.factoryAsync<_i7.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    gh.lazySingleton<_i8.GoogleSignIn>(() => appModule.googleSignIn);
    gh.lazySingleton<_i9.AuthFacadeImpl>(() => _i9.AuthFacadeImpl(
          gh<_i5.FirebaseAuth>(),
          gh<_i6.FirebaseFirestore>(),
          gh<_i8.GoogleSignIn>(),
          gh<_i4.FacebookAuth>(),
        ));
    gh.factory<_i10.AuthCubit>(() => _i10.AuthCubit(gh<_i9.AuthFacadeImpl>()));
    return this;
  }
}

class _$AppModule extends _i11.AppModule {}
