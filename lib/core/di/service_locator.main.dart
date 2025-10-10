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
    ..registerFactory(() => SelectBloc<String>())
    ..registerFactory(() => CountDownBloc())
    ..registerLazySingleton(() => DialogObserverBloc())
    ..registerFactory(() => CitySelectBloc())
    ..registerLazySingleton(() => WardSelectBloc());
    

  // Auth
  _auth();

  // Notification
  _notification();

  // Work
  _work();

// Numerology
  _numerology();

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
    ..registerFactory(() => UpdatePassUsecase(authRepo: sl()))
    ..registerFactory(() => LogoutUsecase(authRepo: sl()))
    ..registerFactory(() => ProfileUsecase(authRepo: sl()))
    ..registerFactory(() => ResendOtpUsecase(authRepo: sl()))
    ..registerFactory(() => VerificationOtpUsecase(authRepo: sl()))
    ..registerLazySingleton(() => AuthBloc(
          login: sl<LoginUsecase>(),
          signup: sl<SignupUsecase>(),
          updatePass: sl<UpdatePassUsecase>(),
          logout: sl<LogoutUsecase>(),
          profile: sl<ProfileUsecase>(),
          resendOtp: sl<ResendOtpUsecase>(),
          verificationOtp: sl<VerificationOtpUsecase>(),
        ));
}

// Notification
void _notification() {
  
}

// Work
void _work() {
  
}

// Numerology
void _numerology() {
  
}

// Profile
void _profile() {
  
}

// Reset singleton
Future<void> resetSl() async {
  await sl.reset(dispose: true);
  await initDependencies();
  await sl.allReady();
}
