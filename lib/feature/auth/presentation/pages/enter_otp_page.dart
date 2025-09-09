import 'package:app_tl_land_3212/common/blocs/count_down/count_down_bloc.dart';
import 'package:app_tl_land_3212/common/common_widgets_module.dart';
import 'package:app_tl_land_3212/core/core_constants_module.dart';
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

  @override
  void initState() {
    super.initState();
    _countDownBloc = CountDownBloc();
    _countDownBloc.add(const CountDownEvent.startCountdown(second: 59));
  }

  @override
  void dispose() {
    _countDownBloc.close();
    super.dispose();
  }

  void _resendOtp() {
    // Tại đây, bạn có thể thêm logic gọi API để gửi lại mã OTP
    // Sau đó, bắt đầu lại bộ đếm ngược
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
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Một mã xác thực đã được gửi đến email ${widget.email}, vui lòng kiểm tra tin nhắn của bạn. ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 16.h),
                EnterOtpForm(
                  email: widget.email,
                  onCompleted: widget.onCompleted,
                  onError: () {
                    // Khi nhập sai OTP, dừng bộ đếm ngược
                    _countDownBloc.add(const CountDownEvent.cancelCountdown());
                  },
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
                            onPressed: () => _resendOtp(),
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
