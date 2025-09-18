import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn/pages/widget/custom_appbar.dart';
import 'package:learn/pages/widget/custom_button.dart';
import 'package:learn/pages/widget/custom_inputfield.dart';

class ChangeImformation extends StatefulWidget {
  const ChangeImformation({super.key});

  @override
  State<ChangeImformation> createState() => _ChangeImformationState();
}

class _ChangeImformationState extends State<ChangeImformation> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  final List<String> _cityList = [
    "Hà Nội",
    "Hồ Chí Minh",
    "Đà Nẵng",
    "Hải Phòng",
    "Cần Thơ",
  ];
  final List<String> _wardList = [
    "Quận 1",
    "Quận 2",
    "Quận 3",
    "Quận 4",
    "Quận 5",
  ];
  String? selectedCity;
  String? selectedWard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Hồ sơ của bạn"),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProfileImagePicker(),
                CustomInputField(
                  label: "Họ và tên",
                  hintText: "Đinh Trọng Phúc",
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                CustomInputField(
                  label: "Email",
                  hintText: "trongphuc19@gmail.com",
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                CustomInputField(
                  label: "Số điện thoại",
                  hintText: "03774614444",
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  hintStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                _buildCityDropdown(),
                _buildWardDropdown(),
                CustomButton(
                  color: Colors.white,
                  background: Color(0xff179BE0),
                  text: "Cập nhật",
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityDropdown() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thành phố",
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8.h),
          DropdownButtonFormField<String>(
            isExpanded: true,
            icon: Icon(Icons.expand_more),
            value: _cityList.contains(selectedCity) ? selectedCity : null,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 10.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            hint: Text(
              "Hồ Chí Minh",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            items: _cityList.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCity = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWardDropdown() {
    return Padding(
      padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Phường",
            style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w400),
          ),
          SizedBox(height: 8.h),
          DropdownButtonFormField<String>(
            isExpanded: true,
            icon: Icon(Icons.expand_more),
            value: _wardList.contains(selectedWard) ? selectedWard : null,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 10.h,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.black.withValues(alpha: 0.2),
                  width: 1,
                ),
              ),
            ),
            hint: Text(
              "Quận 1",
              style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            items: _wardList.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Text(
                  e,
                  style: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedWard = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class ProfileImagePicker extends StatelessWidget {
  const ProfileImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 90.w,
        height: 90.h,
        margin: EdgeInsets.only(top: 55.h, bottom: 16.h),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45.sp),
              child: Image.asset(
                "assets/images/img_support.jpg",
                fit: BoxFit.cover,
                height: 80.h,
                width: 80.w,
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 10.w,
              child: Container(
                height: 30.h,
                width: 30.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff179BE0),
                ),
                child: Icon(Icons.edit, size: 20.sp, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
