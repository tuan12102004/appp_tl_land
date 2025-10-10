part of 'service_locator.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Common
  await _common();
}

// Common - khai báo BLoC ở đây
Future<void> _common() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  sl
    ..registerLazySingleton(() => Dio())
    ..registerLazySingleton(() => DioClient())
    ..registerLazySingleton(() => SharedPrefsService(prefs: sharedPrefs))
    ..registerLazySingleton(() => MultiLoadingStateService())
    ..registerLazySingleton(() => RiveLoadingService())
    ..registerFactory(() => SelectBloc<bool>())
    ..registerFactory(() => SelectBloc<double>())
    ..registerFactory(() => SelectBloc<int>())
    ..registerFactory(() => CountDownBloc())
    ..registerLazySingleton(() => DialogObserverBloc());

  // Auth
  _auth();

  // Notification
  _notification();

  // search
  _search();

  // Profile
  _profile();
}

// Auth
void _auth() {
  sl
    ..registerFactory<AuthRemoteDatasource>(
        () => AuthRemoteDatasourceImpl(dioClient: sl()))
    ..registerFactory<AuthRepo>(() => AuthRepoImpl(authRemoteDatasource: sl()))
    ..registerFactory(() => LoginUsecase(authRepo: sl()))
    ..registerFactory(() => SignupUsecase(authRepo: sl()))
    ..registerFactory(() => ForgotPassUsecase(authRepo: sl()))
    ..registerFactory(() => LogoutUsecase(authRepo: sl()))
    ..registerFactory(() => ProfileUsecase(authRepo: sl()))
    ..registerFactory(() => ResendOtpUsecase(authRepo: sl()))
    ..registerFactory(() => SendOtpUsecase(authRepo: sl()))
    ..registerFactory(() => VerificationOtpUsecase(authRepo: sl()))
    ..registerLazySingleton(() => AuthBloc(
          login: sl<LoginUsecase>(),
          signup: sl<SignupUsecase>(),
          forgotPass: sl<ForgotPassUsecase>(),
          logout: sl<LogoutUsecase>(),
          profile: sl<ProfileUsecase>(),
          sendOtp: sl<SendOtpUsecase>(),
          resendOtp: sl<ResendOtpUsecase>(),
          verificationOtp: sl<VerificationOtpUsecase>(),
        ));
}

// Notification
void _notification() {}

// search
void _search() {
  sl
    ..registerFactory<SearchRemoteDatasource>(
        () => SearchRemoteDatasourceImpl(dioClient: sl()))
    ..registerFactory<SearchRepo>(
        () => SearchRepoImpl(searchRemoteDatasource: sl()))
    ..registerFactory(() => SearchRealEstatesUsecase(searchRepo: sl()))
    ..registerFactory(() => GetRealEstateCategoriesUsecase(searchRepo: sl()))
    ..registerFactory(() => GetProvinceListUsecase(searchRepo: sl()))
    ..registerFactory(() => GetWardListByProvinceUsecase(searchRepo: sl()))
    ..registerLazySingleton(() => SearchFilterBloc(
        getCategoriesUsecase: sl<GetRealEstateCategoriesUsecase>(),
        getProvinceListUsecase: sl<GetProvinceListUsecase>(),
        getWardListByProvinceUsecase: sl<GetWardListByProvinceUsecase>()))
    ..registerFactory(
        () => PaginatorBloc<RealEstateEntity, SearchFilterParam>());
}

// Profile
void _profile() {}

// Reset singleton
Future<void> resetSl() async {
  await sl.reset(dispose: true);
  await initDependencies();
  await sl.allReady();
}
