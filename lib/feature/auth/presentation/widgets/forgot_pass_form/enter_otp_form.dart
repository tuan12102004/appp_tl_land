import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterOtpForm extends StatefulWidget {
  final String email;
  final void Function(BuildContext context) onCompleted;
  final void Function()? onError;

  const EnterOtpForm({
    super.key,
    required this.email,
    required this.onCompleted,
    this.onError,
  });

  @override
  State<EnterOtpForm> createState() => _EnterOtpFormState();
}

class _EnterOtpFormState extends State<EnterOtpForm> {
  final _otpCodeCon = TextEditingController();
  final _otpCodeNode = FocusNode();
  String? _errorText;

  @override
  void initState() {
    super.initState();
    // Yêu cầu focus vào ô đầu tiên nhập mã OTP khi trang được xây dựng
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_otpCodeNode);
    });
  }

  @override
  void dispose() {
    _otpCodeCon.dispose();
    _otpCodeNode.dispose();
    super.dispose();
  }

  void _onEnterOtp(String otpCode, BuildContext context) {
    FocusScope.of(context).unfocus();
    // final email = widget.email;
    // final otp = int.tryParse(otpCode) ?? 0;
    // final bloc = sl<AuthBloc>();
    // Gửi event xác thực OTP
    // bloc.add(AuthEvent.verificationOtp(
    //   email: email,
    //   otp: otp,
    // ));
    // Chuyển trang
    if (otpCode.trim() != "1111") {
      setState(() {
        _errorText = 'Mã chưa chính xác, xin vui lòng thử lại!';
        _otpCodeCon.clear(); // xóa để nhập lại otp
      });
      widget.onError?.call(); // Gọi callback khi có lỗi
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _otpCodeNode.requestFocus();
      });
    } else {
      widget.onCompleted(context);
      setState(() {
        _errorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Pin code field
        CustomOtpcodeField(
          controller: _otpCodeCon,
          focusNode: _otpCodeNode,
          onCompleted: (otpCode) => _onEnterOtp(otpCode, context),
        ),
        Visibility(
            visible: _errorText != null,
            child: Column(
              children: [
                SizedBox(height: 16.h),
                Text(
                  _errorText ?? '',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: AppColors.textErrorPrimary),
                ),
              ],
            ))
      ],
    );
  }
}
