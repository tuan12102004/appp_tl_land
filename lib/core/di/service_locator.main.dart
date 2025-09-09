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

  // Work
  _work();

// Numerology
  _numerology();

// Profile
  _profile();
  
}

// Auth
void _auth() {
  
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
