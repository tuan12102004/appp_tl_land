import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterOtpPage extends StatefulWidget {
  final String email;
  final void Function(BuildContext context) onCompleted;

  const EnterOtpPage({
    super.key,
    required this.email,
    required this.onCompleted,
  });

  @override
  State<EnterOtpPage> createState() => _EnterOtpPageState();
}

class _EnterOtpPageState extends State<EnterOtpPage> {
  late final CountDownBloc _countDownBloc;
  final _otpCodeCon = TextEditingController();
  final _otpCodeNode = FocusNode();
  String? _errorText;

  @override
  void initState() {
    super.initState();
    _countDownBloc = CountDownBloc();
    _countDownBloc.add(const CountDownEvent.startCountdown(second: 59));

    // Yêu cầu focus khi trang được xây dựng
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_otpCodeNode);
    });
  }

  @override
  void dispose() {
    _countDownBloc.close();
    _otpCodeCon.dispose();
    _otpCodeNode.dispose();
    super.dispose();
  }

  void _onEnterOtp(String otpCode) {
    FocusScope.of(context).unfocus();

    if (otpCode.trim() != "1111") {
      setState(() {
        _errorText = 'Mã chưa chính xác, xin vui lòng thử lại!';
      });
      _otpCodeCon.clear();
      _countDownBloc
          .add(const CountDownEvent.cancelCountdown()); // Dừng đếm ngược
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _otpCodeNode.requestFocus();
      });
    } else {
      setState(() {
        _errorText = null;
      });
      widget.onCompleted(context);
    }
  }

  void _resendOtp() {
    // Logic gửi lại OTP
    _countDownBloc.add(const CountDownEvent.startCountdown(second: 59));
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
        appBar: CustomAuthAppbar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            child: Column(
              children: [
                Text(
                  'Nhập mã xác thực',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Một mã xác thực đã được gửi đến email ${widget.email}, vui lòng kiểm tra tin nhắn của bạn. ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 16.h),
                EnterOtpForm(
                  controller: _otpCodeCon,
                  focusNode: _otpCodeNode,
                  errorText: _errorText,
                  onCompleted: _onEnterOtp,
                ),
                SizedBox(height: 24.h),
                BlocBuilder<CountDownBloc, CountDownState>(
                  bloc: _countDownBloc,
                  builder: (context, state) {
                    return state.maybeWhen(
                      remainingTime: (time, isActive) {
                        if (isActive) {
                          return RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: 'Bạn có thể yêu cầu gửi lại sau ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                        color: TextColors.textDefaultSecondary),
                              ),
                              TextSpan(
                                text: '00:$time',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: TextColors.textBrandPrimary,
                                        fontWeight: FontWeight.w600),
                              ),
                            ]),
                          );
                        } else {
                          return CustomAdaptiveButton(
                            width: double.infinity,
                            height: 50.h,
                            onPressed: _resendOtp,
                            text: 'Gửi lại mã mới',
                          );
                        }
                      },
                      orElse: () => const SizedBox.shrink(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
