import 'dart:io';
import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/enums/validate_type.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:app_tl_land_3212/feature/search/presentation/widgets/search_widget_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangeInfoForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;

  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final TextEditingController birthdayController;

  final FocusNode nameFocus;
  final FocusNode emailFocus;
  final FocusNode phoneFocus;
  final FocusNode addressFocus;
  final FocusNode birthdayFocus;

  final File? avatar;
  final String? initialAvatarUrl;

  final String? selectedGender;
  final int? selectedProvince;
  final int? selectedWard;
  final List<String> genderOptions;
  final List<ProvinceEntity> provinces;
  final List<WardEntity> wards;

  final VoidCallback onPickImage;
  final VoidCallback onPickDate;
  final VoidCallback onUpdateProfile;
  final ValueChanged<String?> onGenderChanged;
  final ValueChanged<int?> onProvinceChanged;
  final ValueChanged<int?> onWardChanged;

  const ChangeInfoForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.addressController,
    required this.birthdayController,
    required this.nameFocus,
    required this.emailFocus,
    required this.phoneFocus,
    required this.addressFocus,
    required this.birthdayFocus,
    this.avatar,
    this.initialAvatarUrl,
    this.selectedGender,
    this.selectedProvince,
    this.selectedWard,
    required this.genderOptions,
    required this.provinces,
    required this.wards,
    required this.onPickImage,
    required this.onPickDate,
    required this.onUpdateProfile,
    required this.onGenderChanged,
    required this.onProvinceChanged,
    required this.onWardChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.all(16.r),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            spacing: 16.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AVATAR
              ProfileAvatar(
                avatar:
                    avatar?.path ?? initialAvatarUrl ?? AppImages.defaultAvatar,
                onPickImage: onPickImage,
              ),

              // FULLNAME
              LabelInputField(
                spacing: 8.h,
                label: 'Họ và tên',
                style: Theme.of(context).textTheme.titleMedium,
                controller: nameController,
                focusNode: nameFocus,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(birthdayFocus),
                hintText: 'Họ và tên',
                validator: (value) => InputValidators.validate(
                    value: value,
                    hintText: 'Họ và tên',
                    keyboardType: TextInputType.name),
                inputFieldType: null,
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8.h,
                children: [
                  // GENDER
                  Expanded(
                    child: CustomCombobox<String>(
                      label: 'Giới tính',
                      hintText: 'Chọn giới tính',
                      items: genderOptions,
                      itemLabel: (item) => item,
                      value: selectedGender,
                      onChanged: onGenderChanged,
                    ),
                  ),

                  // BIRTHDAY
                  Expanded(
                    child: LabelInputField(
                      label: 'Ngày sinh',
                      spacing: 8.h,
                      controller: birthdayController,
                      focusNode: birthdayFocus,
                      readOnly: true,
                      onTap: onPickDate,
                      textInputAction: TextInputAction.next,
                      hintText: 'Chọn ngày sinh',
                      onEditingComplete: () =>
                          FocusScope.of(context).requestFocus(emailFocus),
                      suffixIcon: Icon(
                        Icons.keyboard_arrow_down,
                        color: IconColors.iconDefaultSecondary
                            .withValues(alpha: 0.5),
                      ),
                      validator: (value) => InputValidators.validate(
                          value: value,
                          hintText: 'Ngày sinh',
                          keyboardType: TextInputType.text),
                      inputFieldType: null,
                    ),
                  )
                ],
              ),

              // EMAIL
              LabelInputField(
                spacing: 8.h,
                label: 'Email',
                style: Theme.of(context).textTheme.titleMedium,
                controller: emailController,
                focusNode: emailFocus,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(phoneFocus),
                hintText: 'Email',
                validator: (value) => InputValidators.validate(
                    value: value,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress),
                inputFieldType: null,
              ),

              // PHONE NUMBER
              LabelInputField(
                spacing: 8.h,
                label: 'Số điện thoại',
                style: Theme.of(context).textTheme.titleMedium,
                hintText: 'Số điện thoại',
                controller: phoneController,
                focusNode: phoneFocus,
                inputFieldType: InputFieldType.phone,
                textInputAction: TextInputAction.next,
                onEditingComplete: () =>
                    FocusScope.of(context).requestFocus(addressFocus),
                maxLength: 10,
                validator: (value) => InputValidators.validate(
                    value: value,
                    hintText: 'Số điện thoại',
                    keyboardType: TextInputType.phone),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12.w,
                children: [
                  // PROVINCE
                  Expanded(
                    child: CustomCombobox<int?>(
                      label: 'Thành phố',
                      hintText: 'Chọn thành phố',
                      items: provinces.map((p) => p.id).toList(),
                      itemLabel: (id) =>
                          provinces.firstWhere((p) => p.id == id).name ?? '',
                      value: selectedProvince,
                      onChanged: onProvinceChanged,
                    ),
                  ),

                  // WARD
                  Expanded(
                    child: CustomCombobox<int?>(
                      label: 'Phường',
                      hintText: selectedProvince == null
                          ? 'Chọn thành phố trước'
                          : 'Chọn phường',
                      items: wards.map((w) => w.id).toList(),
                      itemLabel: (id) =>
                          wards.firstWhere((w) => w.id == id).name ?? '',
                      value: selectedWard,
                      onChanged: onWardChanged,
                    ),
                  ),
                ],
              ),

              // ADDRESS
              LabelInputField(
                spacing: 8.h,
                label: 'Địa chỉ',
                style: Theme.of(context).textTheme.titleMedium,
                controller: addressController,
                focusNode: addressFocus,
                keyboardType: TextInputType.streetAddress,
                textInputAction: TextInputAction.done,
                hintText: 'Địa chỉ (số nhà, tên đường)',
                validator: (value) => InputValidators.validate(
                    value: value,
                    hintText: 'Địa chỉ',
                    keyboardType: TextInputType.streetAddress),
                inputFieldType: null,
              ),

              CustomAdaptiveButton(
                text: "Cập nhật",
                width: double.infinity,
                onPressed: onUpdateProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
