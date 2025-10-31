import 'dart:io';
import 'dart:typed_data';

import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/common/widgets/custom_bottom_sheet.dart';
import 'package:app_tl_land_3212/core/core_module.dart';
import 'package:app_tl_land_3212/feature/auth/presentation/auth_module.dart';
import 'package:app_tl_land_3212/feature/profile/domain/profile_domain_module.dart';
import 'package:app_tl_land_3212/feature/profile/presentation/profile_module.dart';
import 'package:app_tl_land_3212/feature/search/domain/search_domain_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

class ChangeImformationPage extends StatefulWidget {
  const ChangeImformationPage({super.key});

  @override
  State<ChangeImformationPage> createState() => _ChangeImformationPageState();
}

class _ChangeImformationPageState extends State<ChangeImformationPage> {
  final List<String> _genderOptions = ["Nam", "Nữ"];
  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _nameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _phoneCon = TextEditingController();
  final TextEditingController _addressCon = TextEditingController();
  final TextEditingController _birthdayCon = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _phoneFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();
  final FocusNode _birthdayFocus = FocusNode();

  int? _selectedProvince;
  int? _selectedWard;
  String? _selectedGender;
  DateTime? _selectedBirthday;
  File? _avatar;
  bool _isInitialDataLoaded = false;

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(const ProfileEvent.getUserProfile());
  }

  @override
  void dispose() {
    _nameCon.dispose();
    _emailCon.dispose();
    _phoneCon.dispose();
    _addressCon.dispose();
    _birthdayCon.dispose();
    _nameFocus.dispose();
    _emailFocus.dispose();
    _phoneFocus.dispose();
    _addressFocus.dispose();
    _birthdayFocus.dispose();
    super.dispose();
  }

// TODO: btn update
  void _onUpdateProfile() {
    if (_formKey.currentState?.validate() ?? false) {
      FocusScope.of(context).unfocus();
      final genderForApi = (_selectedGender == "Nam")
          ? 1
          : (_selectedGender == "Nữ")
              ? 2
              : null;

      if (_selectedProvince == null || _selectedWard == null) {
        showAppSnackbar(context,
            content: "Vui lòng chọn đầy đủ Tỉnh/Thành phố và Phường/Xã.",
            snackbarType: SnackbarType.error);
        return;
      }

      context.read<ProfileBloc>().add(ProfileEvent.updateInfoProfile(
            avatar: _avatar,
            fullname: _nameCon.text,
            email: _emailCon.text,
            phone: _phoneCon.text,
            gender: genderForApi,
            birthday: _selectedBirthday,
            address: _addressCon.text,
            provinceId: _selectedProvince,
            wardId: _selectedWard,
          ));
    }
  }

// TODO: _onOpenShowActionSheet
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
          await _onPickImage(ImageSource.gallery);
          return;
        },
        titleEventFirst: "Chụp ảnh",
        titleEventSecond: "Chọn ảnh",
        iconFirst: Icons.camera_alt_outlined,
        iconSecond: Icons.image_outlined,
        iconFirstColor: IconColors.iconSuccessPrimary,
        iconSecondColor: IconColors.iconBrandPrimary);
  }

  // TODO: On pick img
  Future<void> _onPickImage(ImageSource source) async {
    final Uint8List? bytes = await pickImage(context, imageSource: source);
    if (bytes != null) {
      final tempDir = await getTemporaryDirectory();
      final file =
          File('${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg');
      await file.writeAsBytes(bytes);

      setState(() => _avatar = file);
    }
  }

  // TODO: On pick date
  Future<void> _onPickDate(
      TextEditingController controller, BuildContext context) async {
    final pickedDate = await pickDate(
      context: context,
      initialDate: controller.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy').parse(controller.text.trim())
          : null,
    );
    if (pickedDate != null) {
      setState(() {
        _selectedBirthday = pickedDate; // Cập nhật DateTime object
        _birthdayCon.text = formatDate(pickedDate); // Cập nhật text cho UI
      });
    }
  }

  void _onProfileListener(context, profileState) async {
    if (profileState.isLoading &&
        profileState.actionType == ProfileActionType.updateInfo) {
      if (context.mounted) {
        showAppLoading(
          context,
          riveAnimationPath: AppRiveAnimations.multiLoadingState,
          onInit: sl<MultiLoadingStateService>().init,
        );
      }
    } else if (profileState.isSuccess &&
        profileState.actionType == ProfileActionType.updateInfo) {
      sl<MultiLoadingStateService>().fireCheck();
      await _popAnimation(context);

      if (context.mounted) {
        sl<AuthBloc>().add(const AuthEvent.profile());
        showAppSnackbar(context,
            content: 'Cập nhật thông tin thành công',
            snackbarType: SnackbarType.success);
        await _pop(context);
      }
    } else if (profileState.failure != null) {
      sl<MultiLoadingStateService>().fireError();
      await _popAnimation(context);
      if (context.mounted && profileState.failure?.type != null) {
        DisplayError.handle(
            context: context,
            errerrType: profileState.failure!.type,
            apiMessage: profileState.failure!.err);
      }
    }
  }

  Future<void> _popAnimation(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2), () {
      if (context.mounted) {
        context.pop();
      }
    });
  }

  Future<void> _pop(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 1), () {
      if (context.mounted) {
        context.pop();
      }
    });
  }

  void _populateFormFields(UserProfileEntity user, ProfileState state) {
    if (_isInitialDataLoaded) return;
    _nameCon.text = user.fullname ?? '';
    _emailCon.text = user.email ?? '';
    _phoneCon.text = user.phone ?? '';
    _addressCon.text = user.address ?? '';
    _selectedGender = (user.gender == 1)
        ? "Nam"
        : (user.gender == 2)
            ? "Nữ"
            : null;
    if (user.birthday != null) {
      _selectedBirthday = user.birthday;
      _birthdayCon.text = formatDate(user.birthday!);
    }
    final userProvince = state.provinces.firstWhere(
        (p) => p.name == user.province,
        orElse: () => ProvinceEntity(id: -1, name: ''));
    if (userProvince.id != -1) {
      _selectedProvince = userProvince.id;
    }
    _isInitialDataLoaded = true;
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusWidget(
      child: Scaffold(
        appBar: CustomAppbar(
          isDivider: false,
          leading: CustomAdaptiveTapEffect(
            isOpacity: true,
            onPressed: () => context.pop(),
            child: Icon(getAdaptiveBackIcon(context)),
          ),
        ),
        body: BlocConsumer<ProfileBloc, ProfileState>(
          listener: _onProfileListener,
          builder: (context, state) {
            if (state.isLoading &&
                state.actionType == ProfileActionType.userProfile) {
              // return const Center(
              //   child: CircularProgressIndicator(),
              // );
              return const ChangeInfoShimmer();
            }

            final user = state.userProfileEntity;
            if (user != null) {
              if (state.provinces.isNotEmpty && !_isInitialDataLoaded) {
                _populateFormFields(user, state);
              }

              if (_isInitialDataLoaded &&
                  _selectedWard == null &&
                  state.wards.isNotEmpty) {
                final userWard = state.wards.firstWhere(
                  (w) => w.name == user.ward,
                  orElse: () => WardEntity(id: -1, name: ''),
                );
                if (userWard.id != -1) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    if (mounted) {
                      setState(() {
                        _selectedWard = userWard.id;
                      });
                    }
                  });
                }
              }
            }
            final avatarUrl = state.userProfileEntity?.avatar;
            final displayAvatar = _avatar?.path ?? avatarUrl;
            return ChangeInfoForm(
              formKey: _formKey,
              nameController: _nameCon,
              emailController: _emailCon,
              phoneController: _phoneCon,
              addressController: _addressCon,
              birthdayController: _birthdayCon,
              nameFocus: _nameFocus,
              emailFocus: _emailFocus,
              phoneFocus: _phoneFocus,
              addressFocus: _addressFocus,
              birthdayFocus: _birthdayFocus,
              avatar: _avatar,
              initialAvatarUrl: displayAvatar,
              selectedGender: _selectedGender,
              selectedProvince: _selectedProvince,
              selectedWard: _selectedWard,
              genderOptions: _genderOptions,
              provinces: state.provinces,
              wards: state.wards,
              onPickImage: _onOpenShowActionSheet,
              onPickDate: () => _onPickDate(_birthdayCon, context),
              onUpdateProfile: _onUpdateProfile,
              onGenderChanged: (value) =>
                  setState(() => _selectedGender = value),
              onProvinceChanged: (value) {
                if (value == null || value == _selectedProvince) return;
                setState(() {
                  _selectedProvince = value;
                  _selectedWard = null; // Reset ward
                });
                context
                    .read<ProfileBloc>()
                    .add(ProfileEvent.provinceChanged(provinceId: value));
              },
              onWardChanged: (value) => setState(() => _selectedWard = value),
            );
          },
        ),
      ),
    );
  }
}
