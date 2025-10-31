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

  // search
  _search();

  // Profile
  _profile();
}

// Auth
void _auth() {
  sl
    ..registerFactory<AuthRemoteDatasource>(
        () => AuthRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    ..registerFactory<AuthRepo>(
        () => AuthRepoImpl(authRemoteDatasource: sl<AuthRemoteDatasource>()))
    ..registerFactory(() => LoginUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => SignupUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => ForgotPassUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => LogoutUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => ProfileUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => ResendOtpUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => SendOtpUsecase(authRepo: sl<AuthRepo>()))
    ..registerFactory(() => VerificationOtpUsecase(authRepo: sl<AuthRepo>()))
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
void _notification() {
  sl
    ..registerFactory<NotificationRemoteDatasource>(
        () => NotificationRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    ..registerFactory<NotificationRepo>(() => NotificationRepoImpl(
        notificationRemoteDatasource: sl<NotificationRemoteDatasource>()))
    ..registerFactory(
        () => GetNotificationsUsecase(notificationRepo: sl<NotificationRepo>()))
    ..registerFactory(() =>
        DeleteNotificationUsecase(notificationRepo: sl<NotificationRepo>()))
    ..registerFactory(() =>
        ReadAllNotificationUsecase(notificationRepo: sl<NotificationRepo>()))
    ..registerFactory(() =>
        DeleteAllNotificationUsecase(notificationRepo: sl<NotificationRepo>()))
    ..registerFactory(() =>
        GetNotificationDetailUsecase(notificationRepo: sl<NotificationRepo>()))
    ..registerFactory(() => NotificationBloc(
          getNotifications: sl<GetNotificationsUsecase>(),
          getNotificationDetail: sl<GetNotificationDetailUsecase>(),
          deleteNotification: sl<DeleteNotificationUsecase>(),
          deleteAllNotifications: sl<DeleteAllNotificationUsecase>(),
          readAllNotification: sl<ReadAllNotificationUsecase>(),
        ))
    ..registerFactory(() => PaginatorBloc<NotificationEntity, int?>());
}

// search
void _search() {
  sl
    ..registerFactory<SearchRemoteDatasource>(
        () => SearchRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    ..registerFactory<SearchRepo>(() =>
        SearchRepoImpl(searchRemoteDatasource: sl<SearchRemoteDatasource>()))
    ..registerFactory(
        () => SearchRealEstatesUsecase(searchRepo: sl<SearchRepo>()))
    ..registerFactory(
        () => GetRealEstateCategoriesUsecase(searchRepo: sl<SearchRepo>()))
    ..registerFactory(
        () => GetProvinceListUsecase(searchRepo: sl<SearchRepo>()))
    ..registerFactory(
        () => GetWardListByProvinceUsecase(searchRepo: sl<SearchRepo>()))
    ..registerLazySingleton(() => SearchFilterBloc(
        getCategoriesUsecase: sl<GetRealEstateCategoriesUsecase>(),
        getProvinceListUsecase: sl<GetProvinceListUsecase>(),
        getWardListByProvinceUsecase: sl<GetWardListByProvinceUsecase>()))
    ..registerFactory(
        () => PaginatorBloc<RealEstateEntity, SearchFilterParam>());
}

// Profile
void _profile() {
  sl
    // ================ FAQs ==================
    // Datasource
    ..registerFactory<FaqRemoteDatasource>(
        () => FaqRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<FaqRepo>(
        () => FaqRepoImpl(faqRemoteDatasource: sl<FaqRemoteDatasource>()))
    // Usecases
    ..registerFactory(() => GetFaqsUsecase(faqRepo: sl<FaqRepo>()))
    ..registerFactory(() => GetFaqDetailUsecase(faqRepo: sl<FaqRepo>()))
    // Bloc
    ..registerFactory(() => FaqBloc(
        getFaqDetailUsecase: sl<GetFaqDetailUsecase>(),
        getFaqsUsecase: sl<GetFaqsUsecase>()))

    // ================ CONTACT ================
    // Datasource
    ..registerFactory<ContactRemoteDatasource>(
        () => ContactRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<ContactRepo>(() =>
        ContactRepoImpl(contactRemoteDatasource: sl<ContactRemoteDatasource>()))
    // Usecases
    ..registerFactory(() => GetContactsUsecase(contactRepo: sl<ContactRepo>()))
    // Bloc
    ..registerFactory(
        () => ContactBloc(getContactsUsecase: sl<GetContactsUsecase>()))

    // ================ POLICY ================
    // Datasource
    ..registerFactory<PolicyRemoteDatasource>(
        () => PolicyRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<PolicyRepo>(() =>
        PolicyRepoImpl(policyRemoteDatasource: sl<PolicyRemoteDatasource>()))
    // Usecases
    ..registerFactory(() => GetPolicyUsecase(policyRepo: sl<PolicyRepo>()))
    // Bloc
    ..registerFactory(
        () => PolicyBloc(getPolicyUsecase: sl<GetPolicyUsecase>()))

    // ================ ABOUT US ================
    // Datasource
    ..registerFactory<AboutUsRemoteDatasource>(
        () => AboutUsRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<AboutUsRepo>(() =>
        AboutUsRepoImpl(aboutUsRemoteDatasource: sl<AboutUsRemoteDatasource>()))
    // Usecases
    ..registerFactory(() => GetAboutUsUsecase(aboutUsRepo: sl<AboutUsRepo>()))
    // Bloc
    ..registerFactory(
        () => AboutUsBloc(getAboutUsUsecase: sl<GetAboutUsUsecase>()))

    // ================ CHANGE PASSWORD ================
    // Datasource
    ..registerFactory<ChangePasswordRemoteDatasource>(
        () => ChangePasswordRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<ChangePasswordRepo>(() => ChangePasswordRepoImpl(
        remoteDatasource: sl<ChangePasswordRemoteDatasource>()))
    // Usecases
    ..registerFactory(
        () => ChangePasswordUsecase(repo: sl<ChangePasswordRepo>()))
    // Bloc
    ..registerFactory(() =>
        ChangePasswordBloc(changePasswordUsecase: sl<ChangePasswordUsecase>()))

    // ================ MY REAL ESTATE ================
    // Datasource
    ..registerFactory<MyRealEstateRemoteDatasource>(
        () => MyRealEstateRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    // Repository
    ..registerFactory<MyRealEstateRepo>(() => MyRealEstateRepoImpl(
        remoteDatasource: sl<MyRealEstateRemoteDatasource>()))
    // Usecase
    ..registerFactory(
        () => GetMyRealEstatesUsecase(repository: sl<MyRealEstateRepo>()))
    // Bloc
    ..registerFactory(() => MyRealEstateBloc(
        getMyRealEstatesUsecase: sl<GetMyRealEstatesUsecase>()))
    ..registerFactory(() => PaginatorBloc<RealEstateEntity, ApprovalStatus>())

    // ================ PROFILE ================
    ..registerFactory<ProfileRemoteDatasource>(
        () => ProfileRemoteDatasourceImpl(dioClient: sl<DioClient>()))
    ..registerFactory<ProfileRepository>(() => ProfileRepositoryImpl(
        profileRemoteDatasource: sl<ProfileRemoteDatasource>()))
    ..registerFactory(
        () => GetUserProfileUsecase(profileRepository: sl<ProfileRepository>()))
    ..registerFactory(() =>
        UpdateUserProfileUsecase(profileRepository: sl<ProfileRepository>()))
    ..registerFactory(() => ProfileBloc(
          getUserProfileUsecase: sl<GetUserProfileUsecase>(),
          updateInfoProfileUsecase: sl<UpdateUserProfileUsecase>(),
          getProvincesUsecase: sl<GetProvinceListUsecase>(),
          getWardsByProvinceUsecase: sl<GetWardListByProvinceUsecase>(),
        ));
}

// Reset singleton
Future<void> resetSl() async {
  await sl.reset(dispose: true);
  await initDependencies();
  await sl.allReady();
}
