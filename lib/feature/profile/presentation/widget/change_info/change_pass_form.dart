import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final TextEditingController oldPasswordController;
  final TextEditingController newPasswordController;
  final TextEditingController confirmPasswordController;

  final FocusNode oldPasswordNode;
  final FocusNode newPasswordNode;
  final FocusNode confirmPasswordNode;

  final VoidCallback onUpdatePass;

  const ChangePassForm(
      {super.key,
      required this.formKey,
      required this.oldPasswordController,
      required this.newPasswordController,
      required this.confirmPasswordController,
      required this.oldPasswordNode,
      required this.newPasswordNode,
      required this.confirmPasswordNode,
      required this.onUpdatePass});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(16.r),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16.h,
            children: [
              CustomPassField(
                hintText: 'Nhập mật khẩu cũ',
                controller: oldPasswordController,
                focusNode: oldPasswordNode,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(newPasswordNode),
                validator: (value) => InputValidators.validate(
                  value: value,
                  hintText: 'Mật khẩu',
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
              CustomPassField(
                hintText: 'Nhập mật khẩu mới',
                controller: newPasswordController,
                focusNode: newPasswordNode,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(confirmPasswordNode),
                validator: (value) => InputValidators.validatePassword(value),
              ),
              CustomPassField(
                hintText: 'Nhập lại mật khẩu mới',
                controller: confirmPasswordController,
                focusNode: confirmPasswordNode,
                textInputAction: TextInputAction.done,
                onEditingComplete: () => FocusScope.of(context).unfocus(),
                validator: (value) => InputValidators.validateConfirmPassword(
                    value, newPasswordController.text),
              ),
              Row(
                spacing: 6.w,
                children: [
                  Icon(
                    Icons.info,
                    size: 18.sp,
                    color:
                        IconColors.iconDefaultSecondary.withValues(alpha: 0.5),
                  ),
                  Expanded(
                    child: Text(
                      "Lưu ý: Bạn sẽ phải đăng nhập lại sau khi đổi mật khẩu",
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 13.sp,
                          ),
                    ),
                  )
                ],
              ),
              CustomAdaptiveButton(
                width: double.infinity,
                onPressed: onUpdatePass,
                text: 'Cập nhật',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
