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
import 'package:vibewire/core/navigation/app_router.dart' as _i3;
import 'package:vibewire/core/service/firebase_service.dart' as _i8;
import 'package:vibewire/core/utils/app_module.dart' as _i25;
import 'package:vibewire/domain/repository_impl/auth_facade_impl.dart' as _i15;
import 'package:vibewire/domain/repository_impl/firestore_repository_impl.dart'
    as _i16;
import 'package:vibewire/domain/repository_impl/post_repository_impl.dart'
    as _i18;
import 'package:vibewire/domain/repository_impl/storage_repository_impl.dart'
    as _i13;
import 'package:vibewire/domain/repository_impl/user_repository_impl.dart'
    as _i14;
import 'package:vibewire/features/auth/login/cubit/login_cubit.dart' as _i17;
import 'package:vibewire/features/auth/register/cubit/register_cubit.dart'
    as _i20;
import 'package:vibewire/features/auth/reset_password/cubit/reset_password_cubit.dart'
    as _i21;
import 'package:vibewire/features/dashboard/add_post/add_main_post/cubit/add_main_cubit.dart'
    as _i23;
import 'package:vibewire/features/dashboard/add_post/add_story/cubit/add_story_cubit.dart'
    as _i24;
import 'package:vibewire/features/dashboard/photo_picker/cubit/photo_picker_cubit.dart'
    as _i12;
import 'package:vibewire/features/dashboard/profile/cubit/profile_cubit.dart'
    as _i19;
import 'package:vibewire/features/dashboard/profile/edit_profile/cubit/edit_profile_cubit.dart'
    as _i4;
import 'package:vibewire/features/dashboard/user_data/user_data_cubit.dart'
    as _i22;
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
    gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
    gh.factory<_i4.EditProfileCubit>(() => _i4.EditProfileCubit());
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
    gh.factory<_i12.PhotoPickerCubit>(() => _i12.PhotoPickerCubit());
    gh.lazySingleton<_i13.StorageRepositoryImpl>(
        () => _i13.StorageRepositoryImpl(gh<_i9.FirebaseStorage>()));
    gh.lazySingleton<_i14.UserRepositoryImpl>(() => _i14.UserRepositoryImpl(
          gh<_i7.FirebaseFirestore>(),
          gh<_i6.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i15.AuthFacadeImpl>(() => _i15.AuthFacadeImpl(
          gh<_i6.FirebaseAuth>(),
          gh<_i7.FirebaseFirestore>(),
          gh<_i10.GoogleSignIn>(),
          gh<_i5.FacebookAuth>(),
        ));
    gh.lazySingleton<_i16.FirestoreRepositoryImpl>(
        () => _i16.FirestoreRepositoryImpl(
              gh<_i7.FirebaseFirestore>(),
              gh<_i15.AuthFacadeImpl>(),
              gh<_i13.StorageRepositoryImpl>(),
            ));
    gh.factory<_i17.LoginCubit>(
        () => _i17.LoginCubit(gh<_i15.AuthFacadeImpl>()));
    gh.lazySingleton<_i18.PostRepositoryImpl>(
        () => _i18.PostRepositoryImpl(gh<_i16.FirestoreRepositoryImpl>()));
    gh.factory<_i19.ProfileCubit>(
        () => _i19.ProfileCubit(gh<_i15.AuthFacadeImpl>()));
    gh.factory<_i20.RegisterCubit>(
        () => _i20.RegisterCubit(gh<_i15.AuthFacadeImpl>()));
    gh.factory<_i21.ResetPasswordCubit>(
        () => _i21.ResetPasswordCubit(gh<_i15.AuthFacadeImpl>()));
    gh.factory<_i22.UserDataCubit>(() => _i22.UserDataCubit(
          gh<_i14.UserRepositoryImpl>(),
          gh<_i15.AuthFacadeImpl>(),
        ));
    gh.factory<_i23.AddMainCubit>(
        () => _i23.AddMainCubit(gh<_i18.PostRepositoryImpl>()));
    gh.factory<_i24.AddStoryCubit>(
        () => _i24.AddStoryCubit(gh<_i18.PostRepositoryImpl>()));
    return this;
  }
}

class _$AppModule extends _i25.AppModule {}
