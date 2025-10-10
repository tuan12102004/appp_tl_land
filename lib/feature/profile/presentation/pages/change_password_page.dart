import 'package:app_tl_land_3212/common/widgets/custom_adaptive_button.dart';
import 'package:app_tl_land_3212/common/widgets/custom_pass_field.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _oldPasswordNode = FocusNode();
  final _newPasswordNode = FocusNode();
  final _confirmPasswordNode = FocusNode();

  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _oldPasswordNode.dispose();
    _newPasswordNode.dispose();
    _confirmPasswordNode.dispose();
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onUpdatePass() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      // TODO: Event update password
      context.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.backgroundDefaultPrimary,
      appBar: CustomAppbarSub(
        titleLeading: "Đổi mật khẩu",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomPassField(
                hintText: 'Nhập mật khẩu cũ',
                controller: _oldPasswordController,
                focusNode: _oldPasswordNode,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(_newPasswordNode),
                validator: (value) => InputValidators.validate(
                  value: value,
                  hintText: 'Mật khẩu',
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              SizedBox(height: 16.h),
              CustomPassField(
                hintText: 'Nhập mật khẩu mới',
                controller: _newPasswordController,
                focusNode: _newPasswordNode,
                textInputAction: TextInputAction.next,
                onEditingComplete: () => FocusScope.of(context)
                    .requestFocus(_confirmPasswordNode),
                validator: (value) => InputValidators.validatePassword(value),
              ),
              SizedBox(height: 16.h),
              CustomPassField(
                hintText: 'Nhập lại mật khẩu mới',
                controller: _confirmPasswordController,
                focusNode: _confirmPasswordNode,
                textInputAction: TextInputAction.done,
                onEditingComplete: () =>
                    FocusScope.of(context).unfocus(),
                validator: (value) =>  InputValidators.validateConfirmPassword( value, _newPasswordController.text),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Icon(
                    Icons.info,
                    size: 18.sp,
                    color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5),  
                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: Text(
                      "Lưu ý: Bạn sẽ phải đăng nhập lại sau khi đổi mật khẩu",
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w400, 
                        fontSize: 13.sp, 
                        color: TextColors.textDefaultPrimary,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              CustomAdaptiveButton(
                width: double.infinity,
                onPressed: _onUpdatePass,
                text: 'Cập nhật',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
