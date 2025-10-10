import 'dart:io';
import 'dart:typed_data';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/widgets/custom_bottom_sheet.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/constants/app_images.dart';
import 'package:app_tl_land_3212/core/utils/get_adaptive_back_icon.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:app_tl_land_3212/core/utils/pick_image.dart';
import 'package:app_tl_land_3212/core/utils/show_app_snackbar.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/widget/change_info/profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ChangeImformationPage extends StatefulWidget {
  const ChangeImformationPage({super.key});

  @override
  State<ChangeImformationPage> createState() => _ChangeImformationPageState();
}

class _ChangeImformationPageState extends State<ChangeImformationPage> {
  // Fake dữ liệu
  final List<String> _city = ["Hà Nội", "Hồ Chí Minh", "Đà Nẵng", "Cần Thơ", "Vĩnh Long", "Bến Tre"];
  final List<String> _ward = ["Phường 1", "Phường 2", "Phường 3", "Phường 4", "Phường 5"];

  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _nameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _phoneCon = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();

  String? _selectedValueCity;
  String? _selectedValueWard;

  File? _avatar;

  @override
  void dispose() {
    // TODO: implement dispose
    _nameCon.dispose();
    _emailCon.dispose();
    _phoneCon.dispose();

    _nameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
    super.dispose();
  }

  // TODO: UPDATE PROFILE
  void _onUpdateProfie(){
    String type = "";
    if (_formKey.currentState?.validate() == true) {
      FocusScope.of(context).unfocus();
      if(_selectedValueCity == null || _selectedValueWard == null){
        if(_selectedValueCity == null){
          type = "Thành phố";
        }else{
          type = "Phường";
        }
        showAppSnackbar(
          context,
          content: "$type không được bỏ trống",
          snackbarType: SnackbarType.error,
        );
        return;
      }
      // TODO: Event update profile
      context.pop();
    }
  }

  void _onOpenShowActionSheet() {
    showAdaptiveBottomSheet(
      context: context,
      onEventFirst: () async {
        context.pop();
        await _onPickImage(ImageSource.camera);
        return;
      },
      onEventSecond: () async {
        context.pop();
        await _onPickImage(ImageSource.camera);
        return;
      },
      titleEventFirst: "Chụp ảnh",
      titleEventSecond: "Chọn ảnh",
      iconFirst: Icons.camera_alt_outlined,
      iconSecond: Icons.image_outlined,
      iconFirstColor: IconColors.iconSuccessPrimary,
      iconSecondColor: IconColors.iconBrandPrimary
    );
  }

  Future<void> _onPickImage(ImageSource source) async {
    final Uint8List? bytes = await pickImage(context, imageSource: source);
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
      await file.writeAsBytes(bytes);

      setState(() => _avatar = file);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColors.backgroundNavigationBarDefaultSolid,
      appBar: CustomAppbar(
        isDivider: false,
        leading: CustomAdaptiveTapEffect(
          isOpacity: true,
          onPressed: () => context.pop(),
          child: Icon(
            getAdaptiveBackIcon(context),
            size: 22.sp,
            color: IconColors.iconNavigationBarEnabled
          ),
        ),
      ),
      body: UnfocusWidget(
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(16.w, 16.w, 16.w, 0),
          child: ListView(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO: AVATAR
                    ProfileAvatar(
                      avatar: _avatar != null ? _avatar!.path : AppImages.defaultAvatar,
                      fileAvatar: _avatar,
                      onPickImage: _onOpenShowActionSheet,
                    ),
                    SizedBox(height: 24.h,),
                    
                    // TODO: FULLNAME
                    LabelForm(label: "Họ và tên"),
                    SizedBox(height: 8.h,),
                    CustomInputField(
                      controller: _nameCon,
                      focusNode: _nameFocus,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).requestFocus(_emailFocus),
                      hintText: 'Họ và tên',
                      validator: (value) => InputValidators.validate(
                        value: value, 
                        hintText: 'Họ và tên',
                        keyboardType: TextInputType.name
                      )
                    ),
                    SizedBox(height: 16.h,),
                    
                    // TODO: EMAIL
                    LabelForm(label: "Email"),
                    SizedBox(height: 8.h,),
                    CustomInputField(
                      controller: _emailCon,
                      focusNode: _emailFocus,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () => FocusScope.of(context).requestFocus(_phoneFocus),
                      hintText: 'Email',
                      validator: (value) => InputValidators.validate(
                        value: value, 
                        hintText: 'Email',
                        keyboardType: TextInputType.emailAddress
                      )
                    ),
                    SizedBox(height: 16.h,),
                    
                    // TODO: PHONE NUMBER
                    LabelForm(label: "Số điện thoại"),
                    SizedBox(height: 8.h,),
                    CustomInputField(
                      controller: _phoneCon,
                      focusNode: _phoneFocus,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.done,
                      onEditingComplete: () => FocusScope.of(context).unfocus(),
                      hintText: 'Số điện thoại',
                      validator: (value) => InputValidators.validate(
                        value: value, 
                        hintText: 'Số điện thoại',
                        keyboardType: TextInputType.phone
                      )
                    ),
                    SizedBox(height: 16.h,),
                    
                    // TODO: CITY
                    CustomCombobox<String>(
                      label: 'Thành phố',
                      hintText: 'Chọn thành phố',
                      items: _city,
                      itemLabel: (item) => item,
                      value: _selectedValueCity,
                      onChanged: (value) {
                        setState(() {_selectedValueCity = value;});
                      },
                    ),
                    SizedBox(height: 16.h,),
                    
                    // TODO: WARD
                    CustomCombobox<String>(
                      label: 'Phường',
                      hintText: 'Chọn phường',
                      items: _ward,
                      itemLabel: (item) => item,
                      value: _selectedValueWard,
                      onChanged: (value) {
                        setState(() {_selectedValueWard = value;});
                      },
                    ),
                    SizedBox(height: 16.h,),
                    CustomAdaptiveButton(
                      text: "Cập nhập",
                      width: double.infinity,
                      onPressed: _onUpdateProfie,
                    ),
                    SizedBox(height: 16.h,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}