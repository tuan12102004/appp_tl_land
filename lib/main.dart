import 'core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'bootstrap.dart';

void main() async {
  // Khởi tạo ràng buộc Flutter – đảm bảo bạn có thể sử dụng async/await trong main() trước khi runApp.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // Bật các overlay hệ thống (status bar + navigation bar)
  await SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );
  // Bật splash screen khi app khởi động (iOS + Android)
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // Khóa màn hình về chế độ dọc
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown, // dọc xuống
    DeviceOrientation.portraitUp, // dọc lên
  ]);
  // Tùy chỉnh màu thanh trạng thái (status bar & navigation bar)
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: BasicColors.red100,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  SystemUiService.setOverlay(
    systemNavigationBarColor: AppColors.backgroundDefaultSecondary,
  );

  // Load .env file
  await dotenv.load(fileName: AppConsts.envPath);

  // Khởi tạo Dependency Injection
  await initDependencies();
  await sl.allReady();

  // Xóa splash screen khi đã sẵn sàng
  FlutterNativeSplash.remove();
  runApp(
    const TLLandApp(),
  );
}
