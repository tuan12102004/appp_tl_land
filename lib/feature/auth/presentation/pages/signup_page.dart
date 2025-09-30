import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  void initState() {
    super.initState();
    sl<AuthBloc>().add(const AuthEvent.signup());
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      appBar: CustomAuthAppbar(),
      logoAlignment: LogoAlignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              "Đăng ký",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(height: 20.h),
            Text(
              "Liên hệ với chúng tôi để tạo tài khoản",
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.h),
            BlocConsumer<AuthBloc, AuthState>(
              bloc: sl<AuthBloc>(),
              listener: (BuildContext context, AuthState state) {
                if (state.failure != null) {
                  DisplayError.handle(
                    context: context,
                    errerrType: state.failure!.type,
                    apiMessage: state.failure!.err,
                  );
                }
              },
              builder: (context, state) {
                if (state.isLoading ||
                    state.contactToSignup.isEmpty && state.failure == null) {
                  return const ContactSignupShimmer();
                }
                return ContactSignupList(contacts: state.contactToSignup);
              },
            ),
          ],
        ),
      ),
    );
  }
}
