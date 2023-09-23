// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:vibewire/core/navigation/app_router.dart' as _i4;
import 'package:vibewire/core/service/firebase_service.dart' as _i8;
import 'package:vibewire/core/utils/app_module.dart' as _i19;
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart' as _i16;
import 'package:vibewire/domain/repository_impl/post_repository_impl.dart'
    as _i12;
import 'package:vibewire/features/auth/cubit/auth_cubit.dart' as _i18;
import 'package:vibewire/features/dashboard/add_post/add_main_post/cubit/add_main_cubit.dart'
    as _i14;
import 'package:vibewire/features/dashboard/add_post/add_story/cubit/add_story_cubit.dart'
    as _i15;
import 'package:vibewire/features/dashboard/add_post/cubit/add_post_cubit.dart'
    as _i3;
import 'package:vibewire/features/dashboard/profile/cubit/profile_cubit.dart'
    as _i17;
import 'package:vibewire/features/user_data/user_data_cubit.dart' as _i13;
import 'package:vibewire/locale_selector.dart' as _i11;

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
    gh.factory<_i3.AddPostCubit>(() => _i3.AddPostCubit());
    gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
    gh.lazySingleton<_i5.FacebookAuth>(() => appModule.facebookAuth);
    gh.lazySingleton<_i6.FirebaseAuth>(() => appModule.auth);
    gh.lazySingleton<_i7.FirebaseFirestore>(() => appModule.firestore);
    await gh.factoryAsync<_i8.FirebaseService>(
      () => appModule.fireService,
      preResolve: true,
    );
    gh.lazySingleton<_i9.FirebaseStorage>(() => appModule.storage);
    gh.lazySingleton<_i10.GoogleSignIn>(() => appModule.googleSignIn);
    gh.lazySingleton<_i11.LocaleModel>(() => _i11.LocaleModel());
    gh.lazySingleton<_i12.PostRepositoryImpl>(() => _i12.PostRepositoryImpl(
          gh<_i7.FirebaseFirestore>(),
          gh<_i9.FirebaseStorage>(),
          gh<_i6.FirebaseAuth>(),
        ));
    gh.factory<_i13.UserDataCubit>(() => _i13.UserDataCubit());
    gh.factory<_i14.AddMainCubit>(
        () => _i14.AddMainCubit(gh<_i12.PostRepositoryImpl>()));
    gh.factory<_i15.AddStoryCubit>(
        () => _i15.AddStoryCubit(gh<_i12.PostRepositoryImpl>()));
    gh.lazySingleton<_i16.AuthFacadeImpl>(() => _i16.AuthFacadeImpl(
          gh<_i6.FirebaseAuth>(),
          gh<_i7.FirebaseFirestore>(),
          gh<_i10.GoogleSignIn>(),
          gh<_i5.FacebookAuth>(),
        ));
    gh.factory<_i17.ProfileCubit>(() => _i17.ProfileCubit(
          gh<_i16.AuthFacadeImpl>(),
          gh<_i12.PostRepositoryImpl>(),
        ));
    gh.factory<_i18.AuthCubit>(() => _i18.AuthCubit(gh<_i16.AuthFacadeImpl>()));
    return this;
  }
}

class _$AppModule extends _i19.AppModule {}
