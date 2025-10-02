import 'package:app_tl_land_3212/common/common_module.dart';
import 'package:app_tl_land_3212/core/constants/app_colors.dart';
import 'package:app_tl_land_3212/core/services/formatter_service.dart';
import 'package:app_tl_land_3212/core/utils/format_date_time.dart';
import 'package:app_tl_land_3212/core/utils/input_validators.dart';
import 'package:app_tl_land_3212/core/utils/label_form.dart';
import 'package:app_tl_land_3212/core/utils/pick_date.dart';
import 'package:app_tl_land_3212/core/utils/show_app_snackbar.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_appbar_sub.dart';
import 'package:app_tl_land_3212/feature/floating_add/presentation/widgets/shared/custom_combobox.dart';
import 'package:app_tl_land_3212/feature/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class EditOwnerPage extends StatefulWidget {
  final OwnerEntity item;
  const EditOwnerPage({super.key, required this.item});

  @override
  State<EditOwnerPage> createState() => _EditOwnerPageState();
}

class _EditOwnerPageState extends State<EditOwnerPage> {
  // Fake dữ liệu
  final List<String> _city = ["Hà Nội", "Hồ Chí Minh", "Đà Nẵng"];
  final List<String> _ward = ["Phường 1", "Phường 2", "Phường 3"];

  final GlobalKey<FormState> _formKey = GlobalKey();

  final TextEditingController _nameCon = TextEditingController();
  final TextEditingController _phoneCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _addressCon = TextEditingController();
  final TextEditingController _dateStayCon = TextEditingController();
  final TextEditingController _dateLeaveCon = TextEditingController();


  final FocusNode _nameNode = FocusNode();
  final FocusNode _phoneNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _addressNode = FocusNode();
  final FocusNode _dateStayNode = FocusNode();
  final FocusNode _dateLeaveNode = FocusNode();

  String? _selectedValueCity;
  String? _selectedValueWard;

  @override
  void initState() {
    super.initState();
    final item = widget.item;
    _nameCon.text = item.name;
    _phoneCon.text = item.phone;
    _emailCon.text = item.email;
    _addressCon.text = getPartAddress(item.address)[0];
    _dateStayCon.text = formatDate(item.startDate);
    _dateLeaveCon.text = formatDate(item.endDate);

    _selectedValueWard = getPartAddress(item.address)[1];
    _selectedValueCity = getPartAddress(item.address)[2];
  }

  @override
  void dispose() {
    _nameCon.dispose();
    _phoneCon.dispose();
    _emailCon.dispose();
    _addressCon.dispose();
    _dateStayCon.dispose();
    _dateLeaveCon.dispose();

    _nameNode.dispose();
    _phoneNode.dispose();
    _emailNode.dispose();
    _addressNode.dispose();
    _dateStayNode.dispose();
    _dateLeaveNode.dispose();

    super.dispose();
  }

  // TODO: Get part address
  List<String> getPartAddress(String address){
    return address.split(', ');
  }

  // TODO: Get full address
  String getFullAddress({
    required String detail,
    required String ward,
    required String city,
  }) {
    final parts = <String>[];
    if (detail.isNotEmpty) parts.add(detail);
    if (ward.isNotEmpty) parts.add(ward);
    if (city.isNotEmpty) parts.add(city);
    return parts.join(", ");
  }


  //TODO: On pick date
  Future<void> _onPickDate(TextEditingController controller, BuildContext context) async {
    final pickedDate = await pickDate(
      context: context,
      initialDate: controller.text.isNotEmpty
          ? DateFormat('dd/MM/yyyy').parse(controller.text.trim())
          : null,
    );
    if (pickedDate != null) {
      controller.value = TextEditingValue(
        text: DateFormat('dd/MM/yyyy').format(pickedDate),
      );
    }
  }

  // TODO: Save owner
  void _onSaveOwner(){
    _onValidateDate();
    if (_formKey.currentState?.validate() == true) {
      FocusScope.of(context).unfocus();
      // TODO: Event save owner edited
      final updatedOwner = widget.item.copyWith(
        name: _nameCon.text.trim(),
        phone: _phoneCon.text.trim(),
        email: _emailCon.text.trim(),
        address: getFullAddress(
          detail: _addressCon.text.trim(),
          ward: _selectedValueWard ?? "",
          city: _selectedValueCity ?? "",
        ),
        startDate: DateFormat('dd/MM/yyyy').parse(_dateStayCon.text.trim()),
        endDate: DateFormat('dd/MM/yyyy').parse(_dateLeaveCon.text.trim()),
      );
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.pop(updatedOwner);
      });
    }
  }

  // TODO: Validation date stay and data leave
  void _onValidateDate(){
    if(_dateStayCon.text.isNotEmpty && _dateLeaveCon.text.isNotEmpty){
      if(DateFormat('dd/MM/yyyy')
      .parse(_dateLeaveCon.text.trim())
      .isBefore(DateFormat('dd/MM/yyyy')
      .parse(_dateStayCon.text.trim()))){
        showAppSnackbar(
          context,
          snackbarType: SnackbarType.error,
          content: 'Ngày bắt đầu ở phải trước ngày rời đi',
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: BackgroundColors.backgroundDefaultPrimary,
      appBar: CustomAppbarSub(
        iconLeading: Icons.close,
        titleLeading: 'Chỉnh sửa chủ sở hữu',
        onLeading: () => context.pop(),
        isAction: true,
        titleAction: 'Lưu',
        isDivider: false,
        onAction: (){
          // TODO: Add owner
          _onSaveOwner();
        },
      ),
      body: UnfocusWidget(
        child: SafeArea(
          minimum: EdgeInsets.all(16.w),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabelForm(label: 'Họ và tên'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    hintText: "VD: Nguyễn Văn A",
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    controller: _nameCon,
                    focusNode: _nameNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).requestFocus(_phoneNode),
                    keyboardType: TextInputType.text,
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Họ và tên',
                      keyboardType: TextInputType.text
                    ),
                  ),
                  SizedBox(height: 16.h,),
        
                  LabelForm(label: 'Số điện thoại'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    hintText: "VD: 0987654321",
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    controller: _phoneCon,
                    focusNode: _phoneNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).requestFocus(_emailNode),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [FormatterService.phoneFormatter],
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Số điện thoại',
                      keyboardType: TextInputType.phone
                    ),
                  ),
                  SizedBox(height: 16.h,),
        
                  LabelForm(label: 'Email'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    hintText: "VD: abc123@gmail.com",
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    controller: _emailCon,
                    focusNode: _emailNode,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => FocusScope.of(context).unfocus(),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress
                    ),
                  ),
                  SizedBox(height: 16.h,),
        
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
        
                  LabelForm(label: 'Địa chỉ cụ thể'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    hintText: "VD:  123/4 đ.ABC",
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    controller: _addressCon,
                    focusNode: _addressNode,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    onEditingComplete: () => FocusScope.of(context).requestFocus(_dateStayNode),
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Địa chỉ cụ thể',
                      keyboardType: TextInputType.text
                    ),
                  ),
                  SizedBox(height: 16.h,),
        
                  LabelForm(label: 'Thời gian bắt đầu ở'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    controller: _dateStayCon,
                    focusNode: _dateStayNode,
                    readOnly: true,
                    onTap: () async {
                      //TODO: On pick date
                      await _onPickDate(_dateStayCon ,context);
                    },
                    textInputAction: TextInputAction.next,
                    hintText: 'Chọn thời gian',
                    onEditingComplete: () => FocusScope.of(context).requestFocus(_dateLeaveNode),
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    suffixIcon: Icon(
                      Icons.chevron_right,
                      size: 22.sp, 
                      color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5)
                    ),
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Thời gian bắt đầu ở',
                      keyboardType: TextInputType.text
                    ),
                  ),
                  SizedBox(height: 16.h,),
        
                  LabelForm(label: 'Thời gian rời đi'),
                  SizedBox(height: 8.h,),
                  CustomInputField(
                    controller: _dateLeaveCon,
                    focusNode: _dateLeaveNode,
                    readOnly: true,
                    onTap: () async {
                      //TODO: On pick date
                      await _onPickDate(_dateLeaveCon ,context);
                    },
                    textInputAction: TextInputAction.done,
                    hintText: 'Chọn thời gian',
                    hintStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: TextColors.textDefaultTertiary.withValues(alpha: 0.3) 
                    ),
                    suffixIcon: Icon(
                      Icons.chevron_right,
                      size: 22.sp, 
                      color: IconColors.iconDefaultSecondary.withValues(alpha: 0.5)
                    ),
                    validator: (value) => InputValidators.validate(
                      value: value, 
                      hintText: 'Thời gian rời đi',
                      keyboardType: TextInputType.text
                    ),
                  ),
                  SizedBox(height: 16.h,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}