import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      bloc: sl<AuthBloc>()..add(const AuthEvent.checkAuth()),
      listener: (context, authState) {
        if (authState.failure != null) {
          if (context.mounted) {
            DisplayError.handle(
              context: context,
              errerrType: authState.failure!.type,
              apiMessage: authState.failure!.err,
            );
          }
        }
      },
      buildWhen: (previous, current) => previous.userModel != current.userModel,
      builder: (context, profileState) {
        final user = profileState.userModel;
        return Scaffold(
          body: SafeArea(
              child: Container(
            color: BasicColors.gray50,
            child: Column(spacing: 6.h, children: [
              Container(
                color: BackgroundColors.backgroundNavigationBarDefaultSolid,
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
                child: Row(
                  spacing: 12.w,
                  children: [
                    SizedBox(
                      width: 52.w,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: UserAvatar(
                          type: AvatarType.medium,
                          imageURL: user?.avatar ?? AppImages.defaultAvatar,
                        ),
                      ),
                    ),
                    Text(
                      user?.fullname ?? 'N/A',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    )
                  ],
                ),
              ),
              ProfileFunctionList(items: getProfileFunctions(context)),
              CustomAdaptiveButton(
                backgroundColor: Colors.transparent,
                onPressed: () => onLogout(context),
                text: "Đăng xuất",
                textColor: TextColors.textErrorPrimary,
              )
            ]),
          )),
        );
      },
    );
  }
}
