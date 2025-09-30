import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/models/api_res/api_res_model.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/data/auth_data_module.dart';
import 'package:dio/dio.dart';

abstract interface class AuthRemoteDatasource {
  Future<String> login({required String email, required String pass});

  Future<UserModel> profile();

  Future<List<ContactSignupModel>> signup();

  Future<String> forgotPass({
    required String email,
    required String pass,
    required String confirmPass,
  });

  Future<String> sendOtp({required String email});

  Future<String> resendOtp({required String email});

  Future<String> verificationOtp({
    required String email,
    required int otp,
  });

  Future<void> logout();
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  final DioClient _dioClient;
  AuthRemoteDatasourceImpl({required DioClient dioClient})
      : _dioClient = dioClient;

  void _throwIfError(Response res) {
    if (res.statusCode != 200) {
      final errMsg = DioClient.getErrorTexts(res.data);
      throw ServerException(err: errMsg);
    }
  }

  // Login
  @override
  Future<String> login({required String email, required String pass}) async {
    try {
      final res = await _dioClient.request(
        ApiUrls.login,
        DioMethod.post,
        data: {
          "username": email.toString(),
          "password": pass,
        },
      );

      _throwIfError(res);

      final dataParser = LoginModel.fromJson(res.data);
      return dataParser.accessToken;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Infor Use
  @override
  Future<UserModel> profile() async {
    // Lấy token từ SharedPrefs
    final token =
        sl<SharedPrefsService>().getString(SharedPrefsKey.accessToken);
    if (token != null) {
      sl<DioClient>().setBearerToken(token);
    } else {
      throw ServerException(err: "Không có token");
    }
    try {
      // Gọi Api
      final res = await _dioClient.request(ApiUrls.profile, DioMethod.get);

      // Kiểm tra trạng thái
      _throwIfError(res);

      final response = ApiResModel.fromJson(
        res.data,
        (json) => UserModel.fromJson(json as Map<String, dynamic>),
      );

      final user = response.data;
      if (user == null) {
        throw ServerException(err: 'Không có dữ liệu người dùng');
      }

      return user;
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Signup
  @override
  Future<List<ContactSignupModel>> signup() async {
    try {
      final res = await _dioClient.request(ApiUrls.signup, DioMethod.get);

      final apiRes = ApiResModel<List<ContactSignupModel>>.fromJson(
          res.data,
          (rawJson) => (rawJson as List<dynamic>)
              .map((el) => ContactSignupModel.fromJson(el))
              .toList());

      if (res.statusCode != 200) {
        throw ServerException(err: DioClient.getErrorTexts(res.data));
      }

      return apiRes.data ?? [];
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // forgot password
  @override
  Future<String> forgotPass({
    required String email,
    required String pass,
    required String confirmPass,
  }) async {
    try {
      // Gọi api tương ứng + body nếu có
      final res = await _dioClient.request(
          ApiUrls.forgotPassword, // enipont
          DioMethod.put, // method
          data: {
            "type": "email",
            "value": email,
            "password": pass,
            "password_confirmation": confirmPass,
          });

      // Kiểm tra trạng thái
      _throwIfError(res);

      // parse res.data thành ApiResModel
      final data = res.data;
      return data["message"] ?? "Thay đổi mật khẩu thành công";
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
// Lấy mã otp
  @override
  Future<String> sendOtp({required String email}) async {
    try {
      // Gọi api
      final res = await _dioClient.request(ApiUrls.resendOtp, DioMethod.post,
          data: {"type": "email", "value": email});

      // Kiểm tra trạng thái
      _throwIfError(res);

      final dataParser = ApiResModel.fromJson(res.data, (json) => json);
      return dataParser.message ?? 'Vui lòng kiểm tra email để nhận mã OTP';
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Lấy mã otp
  @override
  Future<String> resendOtp({required String email}) async {
    try {
      // Gọi api
      final res = await _dioClient.request(ApiUrls.resendOtp, DioMethod.post,
          data: {"type": "email", "value": email});

      // Kiểm tra trạng thái
      _throwIfError(res);

      final dataParser = ApiResModel.fromJson(res.data, (json) => json);
      return dataParser.message ?? 'Vui lòng kiểm tra email để nhận mã OTP';
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Xác thực otp
  @override
  Future<String> verificationOtp(
      {required String email, required int otp}) async {
    try {
      // Gọi api
      final res = await _dioClient.request(ApiUrls.verifyOtp, DioMethod.post,
          data: {"type": "email", "value": email, "otp": otp});

      final data = res.data;
      final message = data['message']?.toString();

      // Kiểm tra trạng thái
      _throwIfError(res);

      // Thay đổi message do api không có message
      if (message?.toLowerCase().contains('false') == true ||
          message?.toLowerCase().contains('resule false') == true ||
          message?.toLowerCase().trim() == 'resule false.') {
        throw ServerException(err: 'Mã OTP không đúng hoặc đã hết hạn');
      }

      final dataParser = ApiResModel.fromJson(res.data, (json) => json);
      return dataParser.message ?? 'Xác thực OTP thành công';
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }

  // Logout
  @override
  Future<void> logout() async {
    // Lấy token từ SharedPrefs
    final token =
        sl<SharedPrefsService>().getString(SharedPrefsKey.accessToken);
    print('tokentokentoken $token');
    if (token != null) {
      sl<DioClient>().setBearerToken(token);
      print(token);
    } else {
      throw ServerException(err: "Không có token");
    }
    try {
      // Gọi api logout
      final res = await _dioClient.request(
        ApiUrls.logout,
        DioMethod.get,
      );

      // Kiểm tra trạng thái
      _throwIfError(res);

      sl<DioClient>().resetToApiKey();
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(err: e.toString());
    }
  }
}
